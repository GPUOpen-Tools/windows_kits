## Copyright (c) 2018 Advanced Micro Devices, Inc. All rights reserved.
cmake_minimum_required(VERSION 3.5.1)

if(WIN32)
    set(WindowsSDKDir "C:\\Program Files (x86)\\Windows Kits\\10")
    set(WindowsTargetPlatformVersion "10.0.10586.0")

    set(ADDITIONAL_INCLUDE_DIRECTORIES ${ADDITIONAL_INCLUDE_DIRECTORIES}
                                       ${WindowsSDKDir}/Include
                                       ${WindowsSDKDir}/Include/${WindowsTargetPlatformVersion}/um
                                       ${WindowsSDKDir}/Include/${WindowsTargetPlatformVersion}/shared)

    set(WINDOWS_SDK_UM "${WindowsSDKDir}\\Include\\${WindowsTargetPlatformVersion}\\um")
    set(WINDOWS_SDK_SHARED "${WindowsSDKDir}\\Include\\${WindowsTargetPlatformVersion}\\shared")

    set(ADDITIONAL_LINK_DIRECTORIES ${ADDITIONAL_LINK_DIRECTORIES}
                                    ${WindowsSDKDir}/Lib/${WindowsTargetPlatformVersion}/um/${AMDTPlatform})

    set(ADDITIONAL_DEFINTIONS ${ADDITIONAL_DEFINTIONS}
                              -DWindowsSDKDir="${WindowsSDKDir}")

endif()