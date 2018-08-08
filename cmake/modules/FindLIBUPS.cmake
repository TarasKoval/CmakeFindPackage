message("message from FindUPS.cmake")

include(FindPackageHandleStandardArgs)
SET ( LIBUPS_FOUND FALSE )

FIND_PATH ( LIBUPS_INCLUDE_DIR NAMES upsclient.h
    HINTS /home/antares/Documents/nut/clients
)

FIND_LIBRARY ( LIBUPS_LIBRARIES NAMES libupsclient
    HINTS /home/antares/Documents/nut/lib
)

GET_FILENAME_COMPONENT( LIBUPS_LIBRARY_DIR ${LIBUPS_LIBRARIES} PATH )

IF ( LIBUPS_INCLUDE_DIR )
    IF ( LIBUPS_LIBRARIES )
        SET ( LIBUPS_FOUND TRUE )
    ENDIF ( LIBUPS_LIBRARIES )
ENDIF ( LIBUPS_INCLUDE_DIR )


IF ( LIBUPS_FOUND )
    MARK_AS_ADVANCED(
        LIBUPS_LIBRARY_DIR
        LIBUPS_INCLUDE_DIR
        LIBUPS_LIBRARIES
    )
ENDIF ( )

find_package_handle_standard_args(LIBUPS
	DEFAULT_MSG
	LIBUPS_INCLUDE_DIR
	LIBUPS_LIBRARIES)
