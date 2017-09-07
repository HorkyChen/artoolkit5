# Copyright (C) 2010-2017 Alibaba Group Holding Limited
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

OUTPUT := out

LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH)/include \
	$(LOCAL_PATH)/lib/SRC/KPM/FreakMatcher \
	$(LOCAL_PATH)/jpeg \

LOCAL_CPPFLAGS:= \
    -DNDEBUG \
    -D_FILE_OFFSET_BITS=64 \
    -fvisibility=hidden \
    -std=gnu++11

LOCAL_CFLAGS += \
    -Wall \
    -Wmissing-prototypes -Wstrict-prototypes \
    -Wno-unused-parameter -Wno-missing-field-initializers


LOCAL_CFLAGS += \
    -DYUNOS

LOCAL_AR_SRC_FILES:= \
	lib/SRC/AR/mAlloc.c \
	lib/SRC/AR/mFree.c \
	lib/SRC/AR/mAllocDup.c \
	lib/SRC/AR/mDup.c \
	lib/SRC/AR/mAllocTrans.c \
	lib/SRC/AR/mTrans.c \
	lib/SRC/AR/mAllocMul.c \
	lib/SRC/AR/mMul.c \
	lib/SRC/AR/mAllocInv.c \
	lib/SRC/AR/mInv.c \
	lib/SRC/AR/mSelfInv.c \
	lib/SRC/AR/mAllocUnit.c \
	lib/SRC/AR/mUnit.c \
	lib/SRC/AR/mDisp.c \
	lib/SRC/AR/mDet.c \
	lib/SRC/AR/mPCA.c \
	lib/SRC/AR/vAlloc.c \
	lib/SRC/AR/vDisp.c \
	lib/SRC/AR/vFree.c \
	lib/SRC/AR/vHouse.c \
	lib/SRC/AR/vInnerP.c \
	lib/SRC/AR/vTridiag.c \
	lib/SRC/AR/paramGetPerspective.c \
	lib/SRC/AR/paramClear.c \
	lib/SRC/AR/paramDecomp.c \
	lib/SRC/AR/paramDistortion.c \
	lib/SRC/AR/paramChangeSize.c \
	lib/SRC/AR/paramFile.c \
	lib/SRC/AR/paramLT.c \
	lib/SRC/AR/paramDisp.c \
	lib/SRC/AR/ar3DCreateHandle.c \
	lib/SRC/AR/ar3DUtil.c \
	lib/SRC/AR/arCreateHandle.c \
	lib/SRC/AR/arDetectMarker.c \
	lib/SRC/AR/arDetectMarker2.c \
	lib/SRC/AR/arFilterTransMat.c \
	lib/SRC/AR/arGetLine.c \
	lib/SRC/AR/arGetMarkerInfo.c \
	lib/SRC/AR/arGetTransMat.c \
	lib/SRC/AR/arGetTransMatStereo.c \
	lib/SRC/AR/arImageProc.c \
	lib/SRC/AR/arLabeling.c \
	lib/SRC/AR/arLabelingSub/arLabelingSubDBIC.c \
	lib/SRC/AR/arLabelingSub/arLabelingSubDBRC.c \
	lib/SRC/AR/arLabelingSub/arLabelingSubDBZ.c \
	lib/SRC/AR/arLabelingSub/arLabelingSubDWIC.c \
	lib/SRC/AR/arLabelingSub/arLabelingSubDWRC.c \
	lib/SRC/AR/arLabelingSub/arLabelingSubDWZ.c \
	lib/SRC/AR/arLabelingSub/arLabelingSubEBIC.c \
	lib/SRC/AR/arLabelingSub/arLabelingSubEBRC.c \
	lib/SRC/AR/arLabelingSub/arLabelingSubEBZ.c \
	lib/SRC/AR/arLabelingSub/arLabelingSubEWIC.c \
	lib/SRC/AR/arLabelingSub/arLabelingSubEWRC.c \
	lib/SRC/AR/arLabelingSub/arLabelingSubEWZ.c \
	lib/SRC/AR/arPattAttach.c \
	lib/SRC/AR/arPattCreateHandle.c \
	lib/SRC/AR/arPattGetID.c \
	lib/SRC/AR/arPattLoad.c \
	lib/SRC/AR/arPattSave.c

LOCAL_AR2_SRC_FILES:= \
	lib/SRC/AR2/handle.c \
	lib/SRC/AR2/imageSet.c \
	lib/SRC/AR2/jpeg.c \
	lib/SRC/AR2/marker.c \
	lib/SRC/AR2/featureMap.c \
	lib/SRC/AR2/featureSet.c \
	lib/SRC/AR2/selectTemplate.c \
	lib/SRC/AR2/surface.c \
	lib/SRC/AR2/tracking.c \
	lib/SRC/AR2/tracking2d.c \
	lib/SRC/AR2/matching.c \
 	lib/SRC/AR2/matching2.c \
	lib/SRC/AR2/template.c \
	lib/SRC/AR2/searchPoint.c \
	lib/SRC/AR2/coord.c \
	lib/SRC/AR2/util.c

LOCAL_KPM_SRC_FILES:= \
	lib/SRC/KPM/kpmHandle.cpp      \
	lib/SRC/KPM/kpmRefDataSet.cpp  \
	lib/SRC/KPM/kpmMatching.cpp    \
	lib/SRC/KPM/kpmResult.cpp      \
	lib/SRC/KPM/kpmUtil.cpp        \
	lib/SRC/KPM/kpmFopen.c       \
	lib/SRC/KPM/FreakMatcher/detectors/DoG_scale_invariant_detector.cpp  \
	lib/SRC/KPM/FreakMatcher/detectors/gaussian_scale_space_pyramid.cpp  \
	lib/SRC/KPM/FreakMatcher/detectors/gradients.cpp  \
	lib/SRC/KPM/FreakMatcher/detectors/harris.cpp  \
	lib/SRC/KPM/FreakMatcher/detectors/orientation_assignment.cpp  \
	lib/SRC/KPM/FreakMatcher/detectors/pyramid.cpp  \
	lib/SRC/KPM/FreakMatcher/facade/visual_database_facade.cpp  \
	lib/SRC/KPM/FreakMatcher/matchers/hough_similarity_voting.cpp  \
	lib/SRC/KPM/FreakMatcher/matchers/freak.cpp  \
	lib/SRC/KPM/FreakMatcher/framework/date_time.cpp  \
	lib/SRC/KPM/FreakMatcher/framework/image.cpp  \
	lib/SRC/KPM/FreakMatcher/framework/logger.cpp  \
	lib/SRC/KPM/FreakMatcher/framework/timers.cpp


LOCAL_ARICP_SRC_FILES:= \
	lib/SRC/ARICP/icpCore.c               \
    lib/SRC/ARICP/icpHandle.c             \
    lib/SRC/ARICP/icpPoint.c              \
    lib/SRC/ARICP/icpPointRobust.c        \
    lib/SRC/ARICP/icpStereoHandle.c       \
    lib/SRC/ARICP/icpStereoPoint.c        \
    lib/SRC/ARICP/icpStereoPointRobust.c  \
    lib/SRC/ARICP/icpCalibStereo.c        \
    lib/SRC/ARICP/icpUtil.c

LOCAL_UTIL_SRC_FILES:= \
	lib/SRC/Util/profile.c \
	lib/SRC/Util/thread_sub.c

LOCAL_JPEG_SRC_FILES:= \
	jpeg/jcapimin.c \
	jpeg/jcapistd.c \
	jpeg/jccoefct.c \
	jpeg/jccolor.c \
	jpeg/jcdctmgr.c \
	jpeg/jchuff.c \
	jpeg/jcinit.c \
	jpeg/jcmainct.c \
	jpeg/jcmarker.c \
	jpeg/jcmaster.c \
	jpeg/jcomapi.c \
	jpeg/jcparam.c \
	jpeg/jcphuff.c \
	jpeg/jcprepct.c \
	jpeg/jcsample.c \
	jpeg/jctrans.c \
	jpeg/jdapimin.c \
	jpeg/jdapistd.c \
	jpeg/jdatadst.c \
	jpeg/jdatasrc.c \
	jpeg/jdcoefct.c \
	jpeg/jdcolor.c \
	jpeg/jddctmgr.c \
	jpeg/jdhuff.c \
	jpeg/jdinput.c \
	jpeg/jdmainct.c \
	jpeg/jdmarker.c \
	jpeg/jdmaster.c \
	jpeg/jdmerge.c \
	jpeg/jdphuff.c \
	jpeg/jdpostct.c \
	jpeg/jdsample.c \
	jpeg/jdtrans.c \
	jpeg/jerror.c \
	jpeg/jfdctflt.c \
	jpeg/jfdctfst.c \
	jpeg/jfdctint.c \
	jpeg/jidctflt.c \
	jpeg/jidctfst.c \
	jpeg/jidctint.c \
	jpeg/jidctred.c \
	jpeg/jquant1.c \
	jpeg/jquant2.c \
	jpeg/jutils.c \
	jpeg/jmemmgr.c \
	jpeg/jmemansi.c \
	jpeg/jcapimin.c \
	jpeg/jcapistd.c \
	jpeg/jctrans.c \
	jpeg/jcparam.c \
	jpeg/jdatadst.c \
	jpeg/jcinit.c \
	jpeg/jcmaster.c \
	jpeg/jcmarker.c \
	jpeg/jcmainct.c \
	jpeg/jcprepct.c \
	jpeg/jccoefct.c \
	jpeg/jccolor.c \
	jpeg/jcsample.c \
	jpeg/jchuff.c \
	jpeg/jcphuff.c \
	jpeg/jcdctmgr.c \
	jpeg/jfdctfst.c \
	jpeg/jfdctflt.c \
	jpeg/jfdctint.c

LOCAL_SRC_FILES += $(LOCAL_AR_SRC_FILES)
LOCAL_SRC_FILES += $(LOCAL_AR2_SRC_FILES)
LOCAL_SRC_FILES += $(LOCAL_ARICP_SRC_FILES)
LOCAL_SRC_FILES += $(LOCAL_KPM_SRC_FILES)
LOCAL_SRC_FILES += $(LOCAL_UTIL_SRC_FILES)
LOCAL_SRC_FILES += $(LOCAL_JPEG_SRC_FILES)

LOCAL_MODULE:= libartoolkit
LOCAL_VERSION_INFO:= 5.3.3
LOCAL_MULTILIB := both
include $(BUILD_SHARED_LIBRARY)
