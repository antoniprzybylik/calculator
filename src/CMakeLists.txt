set(calculator_SRCS
    main.cpp
    ComputeExpression.cpp
    )

qt5_add_resources(RESOURCES resources.qrc)
add_executable(calculator ${calculator_SRCS} ${RESOURCES})
target_link_libraries(calculator Qt5::Core Qt5::Qml Qt5::Quick Qt5::Svg)
install(TARGETS calculator ${KF5_INSTALL_TARGETS_DEFAULT_ARGS})
