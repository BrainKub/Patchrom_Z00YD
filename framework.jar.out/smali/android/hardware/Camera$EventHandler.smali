.class Landroid/hardware/Camera$EventHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private final mCamera:Landroid/hardware/Camera;

.field final synthetic this$0:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/Camera;
    .param p2, "c"    # Landroid/hardware/Camera;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1117
    iput-object p1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    .line 1118
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1119
    iput-object p2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    .line 1117
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 30
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1124
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    sparse-switch v26, :sswitch_data_0

    .line 1500
    const-string/jumbo v26, "Camera"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Unknown message type "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    return-void

    .line 1126
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get29(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v26

    if-eqz v26, :cond_0

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get29(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/hardware/Camera$ShutterCallback;->onShutter()V

    .line 1129
    :cond_0
    return-void

    .line 1132
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get28(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v26

    if-eqz v26, :cond_1

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get28(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 1135
    :cond_1
    return-void

    .line 1138
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get17(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v26

    if-eqz v26, :cond_2

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get17(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 1141
    :cond_2
    return-void

    .line 1144
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get24(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v17

    .line 1145
    .local v17, "pCb":Landroid/hardware/Camera$PreviewCallback;
    if-eqz v17, :cond_4

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get22(Landroid/hardware/Camera;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Landroid/hardware/Camera;->-set0(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;

    .line 1157
    :cond_3
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    .line 1159
    :cond_4
    return-void

    .line 1151
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get35(Landroid/hardware/Camera;)Z

    move-result v26

    if-nez v26, :cond_3

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    const/16 v28, 0x0

    invoke-static/range {v26 .. v28}, Landroid/hardware/Camera;->-wrap1(Landroid/hardware/Camera;ZZ)V

    goto :goto_0

    .line 1162
    .end local v17    # "pCb":Landroid/hardware/Camera$PreviewCallback;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get23(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v26

    if-eqz v26, :cond_6

    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get23(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    .line 1165
    :cond_6
    return-void

    .line 1168
    :sswitch_5
    const/4 v8, 0x0

    .line 1169
    .local v8, "cb":Landroid/hardware/Camera$AutoFocusCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get3(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v27

    monitor-enter v27

    .line 1170
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get2(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .local v8, "cb":Landroid/hardware/Camera$AutoFocusCallback;
    monitor-exit v27

    .line 1172
    if-eqz v8, :cond_7

    .line 1173
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    if-nez v26, :cond_8

    const/16 v20, 0x0

    .line 1174
    .local v20, "success":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    move/from16 v0, v20

    move-object/from16 v1, v26

    invoke-interface {v8, v0, v1}, Landroid/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    .line 1176
    .end local v20    # "success":Z
    :cond_7
    return-void

    .line 1169
    .local v8, "cb":Landroid/hardware/Camera$AutoFocusCallback;
    :catchall_0
    move-exception v26

    monitor-exit v27

    throw v26

    .line 1173
    .local v8, "cb":Landroid/hardware/Camera$AutoFocusCallback;
    :cond_8
    const/16 v20, 0x1

    .restart local v20    # "success":Z
    goto :goto_1

    .line 1179
    .end local v8    # "cb":Landroid/hardware/Camera$AutoFocusCallback;
    .end local v20    # "success":Z
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get36(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v26

    if-eqz v26, :cond_9

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get36(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    if-eqz v26, :cond_a

    const/16 v26, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v26

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/Camera$OnZoomChangeListener;->onZoomChange(IZLandroid/hardware/Camera;)V

    .line 1182
    :cond_9
    return-void

    .line 1180
    :cond_a
    const/16 v26, 0x0

    goto :goto_2

    .line 1185
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get13(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v26

    if-eqz v26, :cond_b

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get13(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [Landroid/hardware/Camera$Face;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$FaceDetectionListener;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    .line 1188
    :cond_b
    return-void

    .line 1191
    :sswitch_8
    const-string/jumbo v26, "Camera"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Error "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get12(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v26

    if-eqz v26, :cond_c

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get12(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v28, v0

    invoke-interface/range {v26 .. v28}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    .line 1195
    :cond_c
    return-void

    .line 1198
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get4(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v26

    if-eqz v26, :cond_d

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get4(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    if-nez v26, :cond_e

    const/16 v26, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v26

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$AutoFocusMoveCallback;->onAutoFocusMoving(ZLandroid/hardware/Camera;)V

    .line 1201
    :cond_d
    return-void

    .line 1199
    :cond_e
    const/16 v26, 0x1

    goto :goto_3

    .line 1204
    :sswitch_a
    const/16 v26, 0x101

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 1205
    .local v19, "statsdata":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    const/16 v26, 0x101

    move/from16 v0, v26

    if-ge v10, v0, :cond_f

    .line 1206
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [B

    mul-int/lit8 v27, v10, 0x4

    invoke-static/range {v26 .. v27}, Landroid/hardware/Camera;->-wrap0([BI)I

    move-result v26

    aput v26, v19, v10

    .line 1205
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1208
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get8(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraDataCallback;

    move-result-object v26

    if-eqz v26, :cond_10

    .line 1209
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get8(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraDataCallback;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$CameraDataCallback;->onCameraData([ILandroid/hardware/Camera;)V

    .line 1211
    :cond_10
    return-void

    .line 1214
    .end local v10    # "i":I
    .end local v19    # "statsdata":[I
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get9(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraMetaDataCallback;

    move-result-object v26

    if-eqz v26, :cond_11

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get9(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraMetaDataCallback;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$CameraMetaDataCallback;->onCameraMetaData([BLandroid/hardware/Camera;)V

    .line 1217
    :cond_11
    return-void

    .line 1223
    :sswitch_c
    const-string/jumbo v26, "Camera"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "MTK_CAMERA_MSG_EXT_NOTIFY arg1="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " arg2="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_0

    .line 1335
    :cond_12
    :goto_5
    :pswitch_0
    const-string/jumbo v26, "Camera"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Unknown MTK-extended notify message type "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    :cond_13
    :goto_6
    :pswitch_1
    return-void

    .line 1227
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get30(Landroid/hardware/Camera;)Landroid/hardware/Camera$SmileCallback;

    move-result-object v26

    if-eqz v26, :cond_13

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get30(Landroid/hardware/Camera;)Landroid/hardware/Camera$SmileCallback;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/hardware/Camera$SmileCallback;->onSmile()V

    goto :goto_6

    .line 1233
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get15(Landroid/hardware/Camera;)Landroid/hardware/Camera$GestureCallback;

    move-result-object v26

    if-eqz v26, :cond_13

    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get15(Landroid/hardware/Camera;)Landroid/hardware/Camera$GestureCallback;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/hardware/Camera$GestureCallback;->onGesture()V

    goto :goto_6

    .line 1239
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get1(Landroid/hardware/Camera;)Landroid/hardware/Camera$AsdCallback;

    move-result-object v26

    if-eqz v26, :cond_13

    .line 1240
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get1(Landroid/hardware/Camera;)Landroid/hardware/Camera$AsdCallback;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v27, v0

    invoke-interface/range {v26 .. v27}, Landroid/hardware/Camera$AsdCallback;->onDetected(I)V

    goto :goto_6

    .line 1259
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get7(Landroid/hardware/Camera;)Landroid/hardware/Camera$ContinuousShotCallback;

    move-result-object v26

    if-eqz v26, :cond_13

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get7(Landroid/hardware/Camera;)Landroid/hardware/Camera$ContinuousShotCallback;

    move-result-object v26

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v27, v0

    invoke-interface/range {v26 .. v27}, Landroid/hardware/Camera$ContinuousShotCallback;->onConinuousShotDone(I)V

    goto :goto_6

    .line 1264
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get25(Landroid/hardware/Camera;)Landroid/hardware/Camera$ZSDPreviewDone;

    move-result-object v26

    if-eqz v26, :cond_13

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get25(Landroid/hardware/Camera;)Landroid/hardware/Camera$ZSDPreviewDone;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/hardware/Camera$ZSDPreviewDone;->onPreviewDone()V

    goto/16 :goto_6

    .line 1269
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get33(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraWarningCallback;

    move-result-object v26

    if-eqz v26, :cond_13

    .line 1270
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    .line 1276
    .local v16, "message":I
    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v21, v0

    .line 1277
    .local v21, "type":[I
    const/16 v22, -0x1

    .line 1278
    .local v22, "warnType":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_7
    const/16 v26, 0x3

    move/from16 v0, v26

    if-ge v10, v0, :cond_14

    .line 1279
    and-int/lit8 v26, v16, 0x1

    aput v26, v21, v10

    .line 1280
    shr-int/lit8 v16, v16, 0x1

    .line 1278
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 1283
    :cond_14
    const/16 v26, 0x0

    aget v26, v21, v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_15

    .line 1284
    const/16 v22, 0x0

    .line 1292
    :goto_8
    const/16 v26, -0x1

    move/from16 v0, v22

    move/from16 v1, v26

    if-eq v0, v1, :cond_13

    .line 1293
    const-string/jumbo v26, "Camera"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Stereo Camera warning message type "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get33(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraWarningCallback;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/hardware/Camera$StereoCameraWarningCallback;->onWarning(I)V

    goto/16 :goto_6

    .line 1285
    :cond_15
    const/16 v26, 0x2

    aget v26, v21, v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_16

    .line 1286
    const/16 v22, 0x2

    goto :goto_8

    .line 1287
    :cond_16
    const/16 v26, 0x1

    aget v26, v21, v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_17

    .line 1288
    const/16 v22, 0x1

    goto :goto_8

    .line 1290
    :cond_17
    const/16 v22, 0x3

    goto :goto_8

    .line 1300
    .end local v10    # "i":I
    .end local v16    # "message":I
    .end local v21    # "type":[I
    .end local v22    # "warnType":I
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get10(Landroid/hardware/Camera;)Landroid/hardware/Camera$DistanceInfoCallback;

    move-result-object v26

    if-eqz v26, :cond_13

    .line 1301
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 1302
    .local v13, "info":Ljava/lang/String;
    if-eqz v13, :cond_13

    .line 1303
    const-string/jumbo v26, "Camera"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Distance info: Info = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get10(Landroid/hardware/Camera;)Landroid/hardware/Camera$DistanceInfoCallback;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v0, v13}, Landroid/hardware/Camera$DistanceInfoCallback;->onInfo(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1309
    .end local v13    # "info":Ljava/lang/String;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get34(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v26

    if-eqz v26, :cond_13

    .line 1310
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get34(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_6

    .line 1316
    :pswitch_a
    const-string/jumbo v26, "Camera"

    const-string/jumbo v27, "MTK_CAMERA_MSG_EXT_NOTIFY_CAPTURE_DONE: stub!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1321
    :pswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    if-eqz v26, :cond_18

    const/16 v18, 0x1

    .line 1322
    .local v18, "playSound":Z
    :goto_9
    const-string/jumbo v26, "Camera"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "MTK_CAMERA_MSG_EXT_NOTIFY_SHUTTER: playSound="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    if-eqz v18, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get29(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v26

    if-eqz v26, :cond_13

    .line 1325
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get29(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/hardware/Camera$ShutterCallback;->onShutter()V

    goto/16 :goto_6

    .line 1321
    .end local v18    # "playSound":Z
    :cond_18
    const/16 v18, 0x0

    .restart local v18    # "playSound":Z
    goto :goto_9

    .line 1330
    .end local v18    # "playSound":Z
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get26(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewRawDumpCallback;

    move-result-object v26

    if-eqz v26, :cond_12

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get26(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewRawDumpCallback;

    move-result-object v26

    const/16 v27, 0x12

    invoke-interface/range {v26 .. v27}, Landroid/hardware/Camera$PreviewRawDumpCallback;->onNotify(I)V

    goto/16 :goto_5

    .line 1341
    :sswitch_d
    const-string/jumbo v26, "Camera"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "MTK_CAMERA_MSG_EXT_DATA arg1="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " arg2="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_1

    .line 1493
    :pswitch_d
    const-string/jumbo v26, "Camera"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Unknown MTK-extended data message type "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    :cond_19
    :goto_a
    return-void

    .line 1346
    :pswitch_e
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [B

    .line 1347
    .local v6, "byteArray":[B
    const/16 v26, 0x10

    move/from16 v0, v26

    new-array v7, v0, [B

    .line 1348
    .local v7, "byteHead":[B
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x10

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v6, v0, v7, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1349
    const-string/jumbo v26, "Camera"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "MTK_CAMERA_MSG_EXT_DATA_AUTORAMA: byteArray.length = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    array-length v0, v6

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v26

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v14

    .line 1352
    .local v14, "intBuf":Ljava/nio/IntBuffer;
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v26

    if-nez v26, :cond_1b

    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get6(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaMoveCallback;

    move-result-object v26

    if-eqz v26, :cond_1a

    .line 1354
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v23

    .line 1355
    .local v23, "x":I
    const/16 v26, 0x2

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v25

    .line 1356
    .local v25, "y":I
    const/16 v26, 0x3

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v9

    .line 1357
    .local v9, "dir":I
    const v26, 0xffff

    and-int v26, v26, v23

    shl-int/lit8 v26, v26, 0x10

    const v27, 0xffff

    and-int v27, v27, v25

    add-int v24, v26, v27

    .line 1358
    .local v24, "xy":I
    const-string/jumbo v26, "Camera"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "call mAutoRamaMoveCallback: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/hardware/Camera;->-get5(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaCallback;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " dir:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " x:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " y:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " xy:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get6(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaMoveCallback;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-interface {v0, v1, v9}, Landroid/hardware/Camera$AutoRamaMoveCallback;->onFrame(II)V

    .line 1376
    .end local v9    # "dir":I
    .end local v23    # "x":I
    .end local v24    # "xy":I
    .end local v25    # "y":I
    :cond_1a
    :goto_b
    const/4 v7, 0x0

    .local v7, "byteHead":[B
    goto/16 :goto_a

    .line 1362
    .local v7, "byteHead":[B
    :cond_1b
    const-string/jumbo v26, "Camera"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "call mAutoRamaCallback: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/hardware/Camera;->-get5(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaCallback;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get5(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaCallback;

    move-result-object v26

    if-eqz v26, :cond_1a

    .line 1364
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v27

    move/from16 v1, v26

    if-ne v0, v1, :cond_1c

    .line 1365
    const-string/jumbo v26, "Camera"

    const-string/jumbo v27, "capturing frame"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get5(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaCallback;

    move-result-object v26

    const/16 v27, 0x0

    invoke-interface/range {v26 .. v27}, Landroid/hardware/Camera$AutoRamaCallback;->onCapture([B)V

    goto :goto_b

    .line 1367
    :cond_1c
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v27

    move/from16 v1, v26

    if-ne v0, v1, :cond_1a

    .line 1368
    const-string/jumbo v26, "Camera"

    const-string/jumbo v27, "image is merged over"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    array-length v0, v6

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x4

    move/from16 v0, v26

    new-array v15, v0, [B

    .line 1370
    .local v15, "jpegData":[B
    array-length v0, v6

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x4

    const/16 v27, 0x4

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v26

    invoke-static {v6, v0, v15, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get5(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaCallback;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v0, v15}, Landroid/hardware/Camera$AutoRamaCallback;->onCapture([B)V

    goto/16 :goto_b

    .line 1382
    .end local v6    # "byteArray":[B
    .end local v7    # "byteHead":[B
    .end local v14    # "intBuf":Ljava/nio/IntBuffer;
    .end local v15    # "jpegData":[B
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [B

    .line 1384
    .restart local v6    # "byteArray":[B
    const-string/jumbo v26, "Camera"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "MTK_CAMERA_MSG_EXT_DATA_AF: byteArray.length = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    array-length v0, v6

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get0(Landroid/hardware/Camera;)Landroid/hardware/Camera$AFDataCallback;

    move-result-object v26

    if-eqz v26, :cond_19

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get0(Landroid/hardware/Camera;)Landroid/hardware/Camera$AFDataCallback;

    move-result-object v4

    .line 1395
    .local v4, "afDatacb":Landroid/hardware/Camera$AFDataCallback;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v4, v0, v1}, Landroid/hardware/Camera$AFDataCallback;->onAFData([BLandroid/hardware/Camera;)V

    goto/16 :goto_a

    .line 1400
    .end local v4    # "afDatacb":Landroid/hardware/Camera$AFDataCallback;
    .end local v6    # "byteArray":[B
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [B

    .line 1402
    .restart local v6    # "byteArray":[B
    const-string/jumbo v26, "Camera"

    .line 1403
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "MTK_CAMERA_MSG_EXT_DATA_OT: byteArray.length = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 1404
    array-length v0, v6

    move/from16 v28, v0

    .line 1403
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1402
    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v26

    .line 1407
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v27

    .line 1406
    invoke-virtual/range {v26 .. v27}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v14

    .line 1408
    .restart local v14    # "intBuf":Ljava/nio/IntBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get18(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v27

    monitor-enter v27

    .line 1409
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get20(Landroid/hardware/Camera;)Landroid/hardware/Camera$ObjectTrackingListener;

    move-result-object v26

    if-eqz v26, :cond_1d

    .line 1410
    const-string/jumbo v26, "Camera"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "OT callback0:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v26

    const/16 v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_1e

    .line 1412
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get21(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v26

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1413
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get21(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v26

    const/16 v28, 0x2

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1414
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get21(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v26

    const/16 v28, 0x3

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1415
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get21(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v26

    const/16 v28, 0x4

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1416
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get19(Landroid/hardware/Camera;)Landroid/hardware/Camera$Face;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/hardware/Camera;->-get21(Landroid/hardware/Camera;)Landroid/graphics/Rect;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    iput-object v0, v1, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    .line 1417
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get19(Landroid/hardware/Camera;)Landroid/hardware/Camera$Face;

    move-result-object v26

    const/16 v28, 0x5

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v26

    iput v0, v1, Landroid/hardware/Camera$Face;->score:I

    .line 1418
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get20(Landroid/hardware/Camera;)Landroid/hardware/Camera$ObjectTrackingListener;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/hardware/Camera;->-get19(Landroid/hardware/Camera;)Landroid/hardware/Camera$Face;

    move-result-object v28

    .line 1419
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v29, v0

    .line 1418
    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$ObjectTrackingListener;->onObjectTracking(Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1d
    :goto_c
    monitor-exit v27

    goto/16 :goto_a

    .line 1421
    :cond_1e
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get20(Landroid/hardware/Camera;)Landroid/hardware/Camera$ObjectTrackingListener;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$ObjectTrackingListener;->onObjectTracking(Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_c

    .line 1408
    :catchall_1
    move-exception v26

    monitor-exit v27

    throw v26

    .line 1429
    .end local v6    # "byteArray":[B
    .end local v14    # "intBuf":Ljava/nio/IntBuffer;
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get16(Landroid/hardware/Camera;)Landroid/hardware/Camera$HdrOriginalCallback;

    move-result-object v26

    if-eqz v26, :cond_19

    .line 1430
    const-string/jumbo v26, "Camera"

    const-string/jumbo v27, "HDR Original callback"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [B

    .line 1432
    .restart local v6    # "byteArray":[B
    array-length v0, v6

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x4

    move/from16 v0, v26

    new-array v15, v0, [B

    .line 1433
    .restart local v15    # "jpegData":[B
    array-length v0, v6

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x4

    const/16 v27, 0x4

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v26

    invoke-static {v6, v0, v15, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1434
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get16(Landroid/hardware/Camera;)Landroid/hardware/Camera$HdrOriginalCallback;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v0, v15}, Landroid/hardware/Camera$HdrOriginalCallback;->onCapture([B)V

    goto/16 :goto_a

    .line 1438
    .end local v6    # "byteArray":[B
    .end local v15    # "jpegData":[B
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get14(Landroid/hardware/Camera;)Landroid/hardware/Camera$FbOriginalCallback;

    move-result-object v26

    if-eqz v26, :cond_19

    .line 1439
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [B

    .line 1440
    .restart local v6    # "byteArray":[B
    array-length v0, v6

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x4

    move/from16 v0, v26

    new-array v15, v0, [B

    .line 1441
    .restart local v15    # "jpegData":[B
    array-length v0, v6

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x4

    const/16 v27, 0x4

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v26

    invoke-static {v6, v0, v15, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1442
    const-string/jumbo v27, "Camera"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "FB Original callback, VFB enable : "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 1443
    const-string/jumbo v26, "ro.mtk_cam_vfb"

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v26

    const/16 v29, 0x1

    move/from16 v0, v26

    move/from16 v1, v29

    if-ne v0, v1, :cond_1f

    const/16 v26, 0x1

    .line 1442
    :goto_d
    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    const-string/jumbo v26, "ro.mtk_cam_vfb"

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get17(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v26

    if-eqz v26, :cond_20

    .line 1446
    const-string/jumbo v26, "Camera"

    .line 1447
    const-string/jumbo v27, "FB Original callback,will call mJpegCallback.onPictureTaken"

    .line 1446
    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get17(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v0, v15, v1}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_a

    .line 1443
    :cond_1f
    const/16 v26, 0x0

    goto :goto_d

    .line 1450
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get14(Landroid/hardware/Camera;)Landroid/hardware/Camera$FbOriginalCallback;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v0, v15}, Landroid/hardware/Camera$FbOriginalCallback;->onCapture([B)V

    goto/16 :goto_a

    .line 1457
    .end local v6    # "byteArray":[B
    .end local v15    # "jpegData":[B
    :pswitch_13
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg2:I

    .line 1458
    .local v11, "idx":I
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [B

    .line 1459
    .local v5, "buf":[B
    array-length v0, v5

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x4

    move/from16 v0, v26

    new-array v12, v0, [B

    .line 1460
    .local v12, "img":[B
    array-length v0, v12

    move/from16 v26, v0

    const/16 v27, 0x4

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v26

    invoke-static {v5, v0, v12, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1461
    const-string/jumbo v26, "Camera"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "MTK_CAMERA_MSG_EXT_DATA_COMPRESSED_IMAGE: idx="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " image length "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    array-length v0, v12

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get17(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v26

    if-eqz v26, :cond_19

    .line 1464
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get17(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v0, v12, v1}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_a

    .line 1469
    .end local v5    # "buf":[B
    .end local v11    # "idx":I
    .end local v12    # "img":[B
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get31(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraJpsCallback;

    move-result-object v26

    if-eqz v26, :cond_19

    .line 1470
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [B

    .line 1471
    .restart local v6    # "byteArray":[B
    array-length v0, v6

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x4

    move/from16 v0, v26

    new-array v15, v0, [B

    .line 1472
    .restart local v15    # "jpegData":[B
    const-string/jumbo v26, "Camera"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "MTK_CAMERA_MSG_EXT_DATA_JPS: jpegData.length = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    array-length v0, v15

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    array-length v0, v6

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x4

    const/16 v27, 0x4

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v26

    invoke-static {v6, v0, v15, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1474
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get31(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraJpsCallback;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v0, v15}, Landroid/hardware/Camera$StereoCameraJpsCallback;->onCapture([B)V

    goto/16 :goto_a

    .line 1479
    .end local v6    # "byteArray":[B
    .end local v15    # "jpegData":[B
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get32(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraMaskCallback;

    move-result-object v26

    if-eqz v26, :cond_19

    .line 1480
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [B

    .line 1481
    .restart local v6    # "byteArray":[B
    array-length v0, v6

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x4

    move/from16 v0, v26

    new-array v15, v0, [B

    .line 1482
    .restart local v15    # "jpegData":[B
    const-string/jumbo v26, "Camera"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "MTK_CAMERA_MSG_EXT_DATA_STEREO_DBG: jpegData.length = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    array-length v0, v15

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    array-length v0, v6

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x4

    const/16 v27, 0x4

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v26

    invoke-static {v6, v0, v15, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get32(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraMaskCallback;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-interface {v0, v15}, Landroid/hardware/Camera$StereoCameraMaskCallback;->onCapture([B)V

    goto/16 :goto_a

    .line 1488
    .end local v6    # "byteArray":[B
    .end local v15    # "jpegData":[B
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get11(Landroid/hardware/Camera;)Z

    move-result v26

    if-eqz v26, :cond_19

    .line 1489
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/hardware/Camera;->-get27(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v27

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_a

    .line 1124
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_d
        0x1 -> :sswitch_8
        0x2 -> :sswitch_0
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_1
        0x100 -> :sswitch_2
        0x400 -> :sswitch_7
        0x800 -> :sswitch_9
        0x1000 -> :sswitch_a
        0x2000 -> :sswitch_b
        0x40000000 -> :sswitch_c
    .end sparse-switch

    .line 1224
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_9
    .end packed-switch

    .line 1342
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_d
        :pswitch_10
        :pswitch_12
        :pswitch_d
        :pswitch_11
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method
