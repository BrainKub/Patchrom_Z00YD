.class public Lcom/android/internal/telephony/MT6580;
.super Lcom/android/internal/telephony/RIL;
.source "MT6580.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# static fields
.field private static final REFRESH_SESSION_RESET:I = 0x6

.field private static final RIL_REQUEST_EMERGENCY_DIAL:I = 0x827

.field private static final RIL_REQUEST_RESUME_REGISTRATION:I = 0x811

.field private static final RIL_REQUEST_SET_CALL_INDICATION:I = 0x826

.field private static final RIL_REQUEST_SET_ECC_LIST:I = 0x829

.field private static final RIL_REQUEST_SET_ECC_SERVICE_CATEGORY:I = 0x828

.field private static final RIL_UNSOL_CALL_INFO_INDICATION:I = 0xbe9

.field private static final RIL_UNSOL_INCOMING_CALL_INDICATION:I = 0xbe2

.field private static final RIL_UNSOL_RESPONSE_PS_NETWORK_STATE_CHANGED:I = 0xbc7

.field private static final RIL_UNSOL_RESPONSE_REGISTRATION_SUSPENDED:I = 0xbd0

.field private static final RIL_UNSOL_SET_ATTACH_APN:I = 0xc01


# instance fields
.field private dataCallCids:[I

.field private mEccList:Lcom/android/internal/telephony/MtkEccList;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I

    .prologue
    const/4 v1, -0x1

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 65
    filled-new-array {v1, v1, v1, v1, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/MT6580;->dataCallCids:[I

    .line 78
    const-string/jumbo v0, "MT6580"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ctor1: context is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MT6580;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/telephony/MT6580;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 80
    new-instance v0, Lcom/android/internal/telephony/MtkEccList;

    invoke-direct {v0}, Lcom/android/internal/telephony/MtkEccList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/MT6580;->mEccList:Lcom/android/internal/telephony/MtkEccList;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, -0x1

    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 65
    filled-new-array {v0, v0, v0, v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/MT6580;->dataCallCids:[I

    .line 89
    const-string/jumbo v0, "MT6580"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ctor2: context is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MT6580;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/telephony/MT6580;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 91
    new-instance v0, Lcom/android/internal/telephony/MtkEccList;

    invoke-direct {v0}, Lcom/android/internal/telephony/MtkEccList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/MT6580;->mEccList:Lcom/android/internal/telephony/MtkEccList;

    .line 84
    return-void
.end method

.method private fetchCidFromDataCall(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 510
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    .line 512
    .local v1, "ret":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iget v2, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    if-ltz v2, :cond_0

    .line 513
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 514
    iget-object v2, p0, Lcom/android/internal/telephony/MT6580;->dataCallCids:[I

    aget v2, v2, v0

    if-gez v2, :cond_1

    .line 515
    iget-object v2, p0, Lcom/android/internal/telephony/MT6580;->dataCallCids:[I

    iget v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    aput v3, v2, v0

    .line 520
    .end local v0    # "i":I
    :cond_0
    return-object v1

    .line 513
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private fixupPSBearerDataRegistration(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x3

    .line 496
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "response":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 499
    aget-object v1, v0, v3

    if-eqz v1, :cond_0

    .line 500
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x80

    if-lt v1, v2, :cond_0

    .line 502
    const-string/jumbo v1, "15"

    aput-object v1, v0, v3

    .line 505
    :cond_0
    return-object v0
.end method

.method private static localRequestToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 97
    sparse-switch p0, :sswitch_data_0

    .line 107
    const-string/jumbo v0, "<unknown response>"

    return-object v0

    .line 98
    :sswitch_0
    const-string/jumbo v0, "RIL_REQUEST_RESUME_REGISTRATION"

    return-object v0

    .line 99
    :sswitch_1
    const-string/jumbo v0, "RIL_REQUEST_SET_CALL_INDICATION"

    return-object v0

    .line 100
    :sswitch_2
    const-string/jumbo v0, "RIL_REQUEST_EMERGENCY_DIAL"

    return-object v0

    .line 101
    :sswitch_3
    const-string/jumbo v0, "RIL_REQUEST_SET_ECC_SERVICE_CATEGORY"

    return-object v0

    .line 102
    :sswitch_4
    const-string/jumbo v0, "RIL_REQUEST_SET_ECC_LIST"

    return-object v0

    .line 97
    nop

    :sswitch_data_0
    .sparse-switch
        0x811 -> :sswitch_0
        0x826 -> :sswitch_1
        0x827 -> :sswitch_2
        0x828 -> :sswitch_3
        0x829 -> :sswitch_4
    .end sparse-switch
.end method

.method private refreshEmergencyList()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/MT6580;->mEccList:Lcom/android/internal/telephony/MtkEccList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/MT6580;->mEccList:Lcom/android/internal/telephony/MtkEccList;

    invoke-static {}, Lcom/android/internal/telephony/MtkEccList;->updateEmergencyNumbersProperty()V

    .line 377
    :cond_0
    return-void
.end method


# virtual methods
.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 3
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "result"    # Landroid/os/Message;

    .prologue
    .line 328
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/android/internal/telephony/MT6580;->dataCallCids:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 330
    iget-object v1, p0, Lcom/android/internal/telephony/MT6580;->dataCallCids:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 334
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;->deactivateDataCall(IILandroid/os/Message;)V

    .line 327
    return-void

    .line 328
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 340
    iget-object v2, p0, Lcom/android/internal/telephony/MT6580;->mEccList:Lcom/android/internal/telephony/MtkEccList;

    invoke-static {p1}, Lcom/android/internal/telephony/MtkEccList;->isEmergencyNumberExt(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 341
    iget-object v2, p0, Lcom/android/internal/telephony/MT6580;->mEccList:Lcom/android/internal/telephony/MtkEccList;

    invoke-static {p1}, Lcom/android/internal/telephony/MtkEccList;->getServiceCategoryFromEcc(Ljava/lang/String;)I

    move-result v1

    .line 343
    .local v1, "serviceCategory":I
    const/16 v2, 0x828

    invoke-static {v2, v3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 345
    .local v0, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/MT6580;->localRequestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 349
    const-string/jumbo v3, " "

    .line 348
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MT6580;->riljLog(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MT6580;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 354
    const/16 v2, 0x827

    invoke-static {v2, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    .line 355
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 356
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    if-nez p3, :cond_0

    .line 360
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/MT6580;->localRequestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MT6580;->riljLog(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/MT6580;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 339
    .end local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v1    # "serviceCategory":I
    :goto_1
    return-void

    .line 362
    .restart local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    .restart local v1    # "serviceCategory":I
    :cond_0
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p3}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 373
    .end local v0    # "rr":Lcom/android/internal/telephony/RILRequest;
    .end local v1    # "serviceCategory":I
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_1
.end method

.method public iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "command"    # I
    .param p2, "fileid"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "pin2"    # Ljava/lang/String;
    .param p9, "aid"    # Ljava/lang/String;
    .param p10, "result"    # Landroid/os/Message;

    .prologue
    .line 527
    const/16 v0, 0xc0

    if-ne p1, v0, :cond_0

    if-nez p6, :cond_0

    .line 528
    const-string/jumbo v0, "MT6580"

    const-string/jumbo v1, "Override the size for the COMMAND_GET_RESPONSE 0 => 15"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/16 p6, 0xf

    .line 531
    :cond_0
    invoke-super/range {p0 .. p10}, Lcom/android/internal/telephony/RIL;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 526
    return-void
.end method

.method protected processSolicited(Landroid/os/Parcel;)Lcom/android/internal/telephony/RILRequest;
    .locals 10
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v9, 0x0

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 417
    .local v0, "dataPosition":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 418
    .local v4, "serial":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 420
    .local v1, "error":I
    const/4 v3, 0x0

    .line 423
    .local v3, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v8, p0, Lcom/android/internal/telephony/MT6580;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v8

    .line 424
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/MT6580;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/RILRequest;

    .line 425
    .local v6, "tr":Lcom/android/internal/telephony/RILRequest;
    if-eqz v6, :cond_1

    iget v7, v6, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    if-ne v7, v4, :cond_1

    .line 426
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-lez v7, :cond_1

    .line 427
    :cond_0
    :try_start_1
    iget v7, v6, Lcom/android/internal/telephony/RILRequest;->mRequest:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sparse-switch v7, :sswitch_data_0

    .end local v3    # "rr":Lcom/android/internal/telephony/RILRequest;
    :cond_1
    :goto_0
    monitor-exit v8

    .line 450
    if-nez v3, :cond_3

    .line 452
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 455
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processSolicited(Landroid/os/Parcel;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v7

    return-object v7

    .line 434
    .restart local v3    # "rr":Lcom/android/internal/telephony/RILRequest;
    :sswitch_0
    move-object v3, v6

    .line 435
    .local v3, "rr":Lcom/android/internal/telephony/RILRequest;
    goto :goto_0

    .line 437
    .local v3, "rr":Lcom/android/internal/telephony/RILRequest;
    :sswitch_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/internal/telephony/MT6580;->refreshEmergencyList()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 438
    :catch_0
    move-exception v5

    .line 440
    .local v5, "thr":Ljava/lang/Throwable;
    :try_start_3
    iget-object v7, v6, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_2

    .line 441
    iget-object v7, v6, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    const/4 v9, 0x0

    invoke-static {v7, v9, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 442
    iget-object v7, v6, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    monitor-exit v8

    .line 444
    return-object v6

    .line 423
    .end local v5    # "thr":Ljava/lang/Throwable;
    .end local v6    # "tr":Lcom/android/internal/telephony/RILRequest;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 459
    .end local v3    # "rr":Lcom/android/internal/telephony/RILRequest;
    .restart local v6    # "tr":Lcom/android/internal/telephony/RILRequest;
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/MT6580;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 461
    .local v3, "rr":Lcom/android/internal/telephony/RILRequest;
    if-nez v3, :cond_4

    .line 462
    return-object v3

    .line 465
    :cond_4
    const/4 v2, 0x0

    .line 467
    .local v2, "ret":Ljava/lang/Object;
    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v7

    if-lez v7, :cond_6

    .line 468
    :cond_5
    iget v7, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v7, :sswitch_data_1

    .line 475
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Shouldn\'t be here: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 469
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MT6580;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 480
    .end local v2    # "ret":Ljava/lang/Object;
    :cond_6
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v8}, Lcom/android/internal/telephony/MT6580;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 481
    const-string/jumbo v8, " "

    .line 480
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 481
    iget v8, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v8, v2}, Lcom/android/internal/telephony/MT6580;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 480
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/MT6580;->riljLog(Ljava/lang/String;)V

    .line 483
    iget-object v7, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    if-eqz v7, :cond_7

    .line 484
    iget-object v7, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v7, v2, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 485
    iget-object v7, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 488
    :cond_7
    return-object v3

    .line 470
    .restart local v2    # "ret":Ljava/lang/Object;
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MT6580;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 471
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MT6580;->fixupPSBearerDataRegistration(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 472
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MT6580;->fetchCidFromDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 473
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MT6580;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    iget-object v7, p0, Lcom/android/internal/telephony/MT6580;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    new-instance v8, Landroid/os/AsyncResult;

    invoke-direct {v8, v9, v9, v9}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 427
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x15 -> :sswitch_0
        0x1b -> :sswitch_0
        0x7b -> :sswitch_0
        0x827 -> :sswitch_0
        0x828 -> :sswitch_0
    .end sparse-switch

    .line 468
    :sswitch_data_1
    .sparse-switch
        0x15 -> :sswitch_4
        0x1b -> :sswitch_5
        0x7b -> :sswitch_6
        0x827 -> :sswitch_2
        0x828 -> :sswitch_3
    .end sparse-switch
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 117
    .local v0, "dataPosition":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 119
    .local v2, "response":I
    sparse-switch v2, :sswitch_data_0

    .line 128
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 130
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 131
    return-void

    .line 120
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MT6580;->responseRegSuspended(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .line 133
    .local v3, "ret":Ljava/lang/Object;
    :goto_0
    sparse-switch v2, :sswitch_data_1

    .line 114
    .end local v3    # "ret":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-void

    .line 121
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MT6580;->responseIncomingCallIndication(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 122
    .end local v3    # "ret":Ljava/lang/Object;
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MT6580;->responseCallProgress(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 123
    .end local v3    # "ret":Ljava/lang/Object;
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MT6580;->responseSetAttachApn(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 124
    .end local v3    # "ret":Ljava/lang/Object;
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MT6580;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 125
    .end local v3    # "ret":Ljava/lang/Object;
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MT6580;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 135
    :sswitch_6
    iget-object v4, p0, Lcom/android/internal/telephony/MT6580;->mCallStateRegistrants:Landroid/os/RegistrantList;

    .line 136
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v6, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 135
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 139
    :sswitch_7
    if-nez v3, :cond_0

    .line 140
    iget-object v4, p0, Lcom/android/internal/telephony/MT6580;->mCallStateRegistrants:Landroid/os/RegistrantList;

    .line 141
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v6, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 140
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1

    :sswitch_8
    move-object v1, v3

    .line 145
    check-cast v1, [Ljava/lang/String;

    .line 147
    .local v1, "resp":[Ljava/lang/String;
    array-length v4, v1

    if-ge v4, v5, :cond_1

    .line 148
    new-array v1, v5, [Ljava/lang/String;

    .line 149
    check-cast v3, [Ljava/lang/String;

    .end local v3    # "ret":Ljava/lang/Object;
    aget-object v4, v3, v7

    aput-object v4, v1, v7

    .line 150
    const/4 v4, 0x1

    aput-object v6, v1, v4

    .line 152
    :cond_1
    aget-object v4, v1, v7

    if-eqz v4, :cond_2

    .line 153
    aget-object v4, v1, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lt v4, v5, :cond_2

    .line 154
    aget-object v4, v1, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x5

    if-gt v4, v5, :cond_2

    .line 156
    const-string/jumbo v4, "0"

    aput-object v4, v1, v7

    .line 159
    :cond_2
    aget-object v4, v1, v7

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/MT6580;->unsljLogMore(ILjava/lang/String;)V

    .line 160
    iget-object v4, p0, Lcom/android/internal/telephony/MT6580;->mUSSDRegistrant:Landroid/os/Registrant;

    if-eqz v4, :cond_0

    .line 161
    iget-object v4, p0, Lcom/android/internal/telephony/MT6580;->mUSSDRegistrant:Landroid/os/Registrant;

    .line 162
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v6, v1, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 161
    invoke-virtual {v4, v5}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 166
    .end local v1    # "resp":[Ljava/lang/String;
    .restart local v3    # "ret":Ljava/lang/Object;
    :sswitch_9
    check-cast v3, [I

    .end local v3    # "ret":Ljava/lang/Object;
    aget v4, v3, v7

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 167
    iget-object v4, p0, Lcom/android/internal/telephony/MT6580;->mVoiceNetworkStateRegistrants:Landroid/os/RegistrantList;

    .line 168
    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v6, v6, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 167
    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 119
    :sswitch_data_0
    .sparse-switch
        0x3ee -> :sswitch_4
        0xbc7 -> :sswitch_5
        0xbd0 -> :sswitch_0
        0xbe2 -> :sswitch_1
        0xbe9 -> :sswitch_2
        0xc01 -> :sswitch_3
    .end sparse-switch

    .line 133
    :sswitch_data_1
    .sparse-switch
        0x3ee -> :sswitch_8
        0xbc7 -> :sswitch_9
        0xbe2 -> :sswitch_6
        0xbe9 -> :sswitch_7
    .end sparse-switch
.end method

.method protected responseCallProgress(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "response":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 227
    const/4 v1, 0x1

    aget-object v1, v0, v1

    const-string/jumbo v2, "129"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    const/4 v1, 0x0

    return-object v1

    .line 231
    :cond_0
    return-object v0
.end method

.method protected responseIncomingCallIndication(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x3

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "response":[Ljava/lang/String;
    const/16 v2, 0x826

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 209
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/MT6580;->localRequestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MT6580;->riljLog(Ljava/lang/String;)V

    .line 211
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget-object v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v3, 0x4

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MT6580;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 217
    return-object v0
.end method

.method protected responseRegSuspended(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 182
    .local v1, "numInts":I
    new-array v2, v1, [I

    .line 184
    .local v2, "response":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v2, v0

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_0
    const/16 v4, 0x811

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 190
    .local v3, "rr":Lcom/android/internal/telephony/RILRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/MT6580;->localRequestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 191
    const-string/jumbo v5, " sessionId "

    .line 190
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 191
    aget v5, v2, v6

    .line 190
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/MT6580;->riljLog(Ljava/lang/String;)V

    .line 193
    iget-object v4, v3, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-object v4, v3, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MT6580;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 198
    return-object v2
.end method

.method protected responseSetAttachApn(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    .line 264
    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/MT6580;->setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 265
    return-object v6
.end method

.method protected responseSimRefresh(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x2

    .line 271
    new-instance v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccRefreshResponse;-><init>()V

    .line 273
    .local v1, "response":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "rawefId":Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    iput v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    .line 278
    iget v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-le v2, v4, :cond_0

    .line 279
    iget v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 280
    iput v4, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    .line 286
    :cond_0
    :goto_1
    return-object v1

    .line 275
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 282
    :cond_2
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    goto :goto_1
.end method

.method public setInitialAttachApn(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "apn"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "authType"    # I
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "result"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 237
    const/16 v2, 0x6f

    invoke-static {v2, v4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    .line 239
    .local v1, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v2, p0, Lcom/android/internal/telephony/MT6580;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/telephony/MT6580;->mInstanceId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "operatorNumber":Ljava/lang/String;
    const-string/jumbo v2, "Set RIL_REQUEST_SET_INITIAL_ATTACH_APN"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MT6580;->riljLog(Ljava/lang/String;)V

    .line 242
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget-object v2, v1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/MT6580;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 253
    const-string/jumbo v3, ", apn:"

    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 253
    const-string/jumbo v3, ", protocol:"

    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 253
    const-string/jumbo v3, ", authType:"

    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 254
    const-string/jumbo v3, ", username:"

    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 254
    const-string/jumbo v3, ", password:"

    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 254
    const-string/jumbo v3, ", operator:"

    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MT6580;->riljLog(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MT6580;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 236
    return-void
.end method

.method public setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "radioTechnology"    # Ljava/lang/String;
    .param p2, "profile"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "authType"    # Ljava/lang/String;
    .param p7, "protocol"    # Ljava/lang/String;
    .param p8, "result"    # Landroid/os/Message;

    .prologue
    .line 294
    const/4 v1, 0x0

    .line 296
    .local v1, "interfaceId":I
    const/16 v3, 0x1b

    invoke-static {v3, p8}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v2

    .line 298
    .local v2, "rr":Lcom/android/internal/telephony/RILRequest;
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 310
    iget-object v3, p0, Lcom/android/internal/telephony/MT6580;->dataCallCids:[I

    aget v3, v3, v0

    if-gez v3, :cond_1

    .line 311
    add-int/lit8 v1, v0, 0x1

    .line 315
    :cond_0
    iget-object v3, v2, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 318
    iget v4, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/MT6580;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    .line 317
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 318
    const-string/jumbo v4, " "

    .line 317
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 318
    const-string/jumbo v4, " "

    .line 317
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 319
    const-string/jumbo v4, " "

    .line 317
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 319
    const-string/jumbo v4, " "

    .line 317
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 319
    const-string/jumbo v4, " "

    .line 317
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 320
    const-string/jumbo v4, " "

    .line 317
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 320
    const-string/jumbo v4, " "

    .line 317
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 320
    const-string/jumbo v4, " "

    .line 317
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/MT6580;->riljLog(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/MT6580;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 293
    return-void

    .line 309
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method
