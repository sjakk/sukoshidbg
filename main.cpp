#include <iostream>
#include <unistd.h>
#include <sys/ptrace.h>
#include <sys/wait.h>
#include <linenoise.h>
#include <vector>
#include <string>
#include <sstream>

std::vector<std::string> split(const std::string &s, char delimiter) {
    std::vector<std::string> out{};
    std::stringstream ss {s};
    std::string item;

    while (std::getline(ss,item,delimiter)) {
        out.push_back(item);
    }

    return out;
}

bool is_prefix(const std::string& s, const std::string& of) {
    if (s.size() > of.size()) return false;
    return std::equal(s.begin(), s.end(), of.begin());
}


class debugger {
public:
    debugger (std::string prog_name, pid_t pid)
        : m_prog_name{std::move(prog_name)}, m_pid{pid} {}

    void run();
    void handle_command(const std::string& line);
    void continue_execution();

private:
    std::string m_prog_name;
    pid_t m_pid;
};

void debugger::continue_execution() {
    ptrace(PTRACE_CONT, m_pid, nullptr, nullptr);

    int wait_status;
    auto options = 0;
    waitpid(m_pid, &wait_status, options);
}

void debugger::handle_command(const std::string& line) {
    auto args = split(line,' ');
    auto command = args[0];

    if (is_prefix(command, "continue")) {
        continue_execution();
    }
    else {
        std::cerr << "Unknown command\n";
    }
}



int main(int argc, char* argv[]){

if (argc < 2){
	std::cerr << "Program name not specified\n";
		return -1;
}

auto prog = argv[1];

auto pid = fork();
if (pid == 0){
	// child process
	// run debugger
	//
	ptrace(PTRACE_TRACEME,0,nullptr,nullptr);
	execl(prog,prog,nullptr);

}
else if (pid >= 1){
// parent process
// run debugger
	std::cout << "started debugging process" << pid << '\n';
	debugger dbg{prog,pid};
	dbg.run();

}

}



void debugger::run(){
int wait_status;
auto options = 0;
waitpid(m_pid,&wait_status,options);

char* line = nullptr;
while((line = linenoise("sukoshidbg> "))!=nullptr){
	handle_command(line);
	linenoiseHistoryAdd(line);
	//linenoiseFree(line);
}


}
