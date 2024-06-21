add_library(pfb INTERFACE)

target_sources(pfb INTERFACE
	${CMAKE_CURRENT_LIST_DIR}/src/mp_pfb.c)

target_include_directories(pfb INTERFACE
	${CMAKE_CURRENT_LIST_DIR}/include)

target_link_libraries(pfb INTERFACE
	"-T${CMAKE_CURRENT_LIST_DIR}/linker_common/linker_definitions.ld")

target_link_libraries(usermod INTERFACE pfb)
