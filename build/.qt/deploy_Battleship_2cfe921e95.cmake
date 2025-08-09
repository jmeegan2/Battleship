include("/Users/jamesmeegan/Desktop/softwareDev/after_layoff/c++/Battleship/build/.qt/QtDeploySupport.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/Battleship-plugins.cmake" OPTIONAL)
set(__QT_DEPLOY_I18N_CATALOGS "qtbase")

qt6_deploy_runtime_dependencies(
    EXECUTABLE Battleship.app
)
