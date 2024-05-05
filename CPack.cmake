include(InstallRequiredSystemLibraries)

set(CPACK_PACKAGE_CONTACT makes.k.s@mail.ru)
set(CPACK_PACKAGE_VERSION ${PRINT_VERSION})
set(CPACK_PACKAGE_NAME "solver")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "static C++ library for solver")
set(CPACK_PACKAGE_VENDOR "BeamzXD")
set(CPACK_PACKAGE_PACK_NAME "solver-${PRINT_VERSION}")

set(CPACK_SOURCE_INSTALLED_DIRECTORIES 
	"${CMAKE_SOURCE_DIR}/solver_application; solver_application"
	"${CMAKE_SOURCE_DIR}/solver_lib; solver_lib"
	"${CMAKE_SOURCE_DIR}/formatter_ex_lib; formatter_ex_lib"
	"${CMAKE_SOURCE_DIR}/formatter_lib; formatter_lib")

set(CPACK_RESOURCE_FILE_README ${CMAKE_CURRENT_SOURCE_DIR}/README.md)

set(CPACK_SOURCE_GENERATOR "TGZ;ZIP")

set(CPACK_RPM_PACKAGE_NAME "print-devel")
set(CPACK_RPM_PACKAGE_LICENSE "MIT")
set(CPACK_RPM_PACKAGE_GROUP "print")
set(CPACK_RPM_CHANGELOG_FILE ${CMAKE_CURRENT_SOURCE_DIR}/ChangeLog.md)
set(CPACK_RPM_PACKAGE_RELEASE 1)

set(CPACK_DEBIAN_PACKAGE_NAME "libprint-dev")
set(CPACK_DEBIAN_PACKAGE_PREDEPENDS "cmake >= 3.0")
set(CPACK_DEBIAN_PACKAGE_RELEASE 1)

include(CPack)