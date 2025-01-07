add_library(libsukoshi libsukoshi.cpp)
add_library(sukoshi::libsukoshi ALIAS libsukoshi)

set_target_properties(
	libsukoshi
	PROPERTIES OUTPUT_NAME sukoshi
)


target_compile_features(libsukoshi PUBLIC cxx_std_17)


target_include_directories(
	libsukoshi
	PRIVATE include
	PUBLIC ${CMAKE_SOURCE_DIR}/include
)
