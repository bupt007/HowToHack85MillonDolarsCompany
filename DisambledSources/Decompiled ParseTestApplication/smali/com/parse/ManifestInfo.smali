.class Lcom/parse/ManifestInfo;
.super Ljava/lang/Object;
.source "ManifestInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ManifestInfo$ManifestCheckResult;
    }
.end annotation


# static fields
.field private static final NUMBER_OF_PUSH_INTENTS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "com.parse.ManifestInfo"

.field private static displayName:Ljava/lang/String;

.field private static iconId:I

.field private static lastModified:J

.field private static final lock:Ljava/lang/Object;

.field private static pushType:Lcom/parse/PushType;

.field private static pushUsesBroadcastReceivers:Ljava/lang/Boolean;

.field static versionCode:I

.field static versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    .line 33
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/parse/ManifestInfo;->lastModified:J

    .line 34
    const/4 v0, -0x1

    sput v0, Lcom/parse/ManifestInfo;->versionCode:I

    .line 35
    sput-object v2, Lcom/parse/ManifestInfo;->versionName:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/parse/ManifestInfo;->iconId:I

    .line 37
    sput-object v2, Lcom/parse/ManifestInfo;->displayName:Ljava/lang/String;

    .line 157
    sput-object v2, Lcom/parse/ManifestInfo;->pushUsesBroadcastReceivers:Ljava/lang/Boolean;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    return-void
.end method

.method private static checkReceiver(Ljava/lang/Class;Ljava/lang/String;[Landroid/content/Intent;)Z
    .locals 8
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "intents"    # [Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/content/BroadcastReceiver;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/Intent;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/content/BroadcastReceiver;>;"
    const/4 v6, 0x0

    .line 421
    invoke-static {p0}, Lcom/parse/ManifestInfo;->getReceiverInfo(Ljava/lang/Class;)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 423
    .local v4, "receiver":Landroid/content/pm/ActivityInfo;
    if-nez v4, :cond_1

    .line 442
    :cond_0
    :goto_0
    return v6

    .line 427
    :cond_1
    if-eqz p1, :cond_2

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 431
    :cond_2
    move-object v0, p2

    .local v0, "arr$":[Landroid/content/Intent;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v2, v0, v1

    .line 432
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v2, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 433
    .local v5, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 437
    invoke-static {p0, v5}, Lcom/parse/ManifestInfo;->checkResolveInfo(Ljava/lang/Class;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 442
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private static checkResolveInfo(Ljava/lang/Class;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/content/BroadcastReceiver;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 411
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/content/BroadcastReceiver;>;"
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 412
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 413
    const/4 v2, 0x1

    .line 417
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static deviceSupportsGcm()Z
    .locals 2

    .prologue
    .line 456
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const-string v0, "com.google.android.gsf"

    invoke-static {v0}, Lcom/parse/ManifestInfo;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static gcmSupportLevel()Lcom/parse/ManifestInfo$ManifestCheckResult;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 460
    const-class v5, Lcom/parse/PushService;

    invoke-static {v5}, Lcom/parse/ManifestInfo;->getServiceInfo(Ljava/lang/Class;)Landroid/content/pm/ServiceInfo;

    move-result-object v5

    if-nez v5, :cond_0

    .line 461
    sget-object v5, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_REQUIRED_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    .line 500
    .local v4, "requiredPermissions":[Ljava/lang/String;
    :goto_0
    return-object v5

    .line 464
    .end local v4    # "requiredPermissions":[Ljava/lang/String;
    :cond_0
    const/4 v5, 0x6

    new-array v4, v5, [Ljava/lang/String;

    const-string v5, "android.permission.INTERNET"

    aput-object v5, v4, v8

    const-string v5, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v5, v4, v9

    const-string v5, "android.permission.WAKE_LOCK"

    aput-object v5, v4, v10

    const/4 v5, 0x3

    const-string v6, "android.permission.GET_ACCOUNTS"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "com.google.android.c2dm.permission.RECEIVE"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".permission.C2D_MESSAGE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 473
    .restart local v4    # "requiredPermissions":[Ljava/lang/String;
    invoke-static {v4}, Lcom/parse/ManifestInfo;->hasPermissions([Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 474
    sget-object v5, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_REQUIRED_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    goto :goto_0

    .line 477
    :cond_1
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 478
    .local v2, "packageName":Ljava/lang/String;
    const-string v3, "com.google.android.c2dm.permission.SEND"

    .line 479
    .local v3, "rcvrPermission":Ljava/lang/String;
    new-array v0, v10, [Landroid/content/Intent;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.google.android.c2dm.intent.RECEIVE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    aput-object v5, v0, v8

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    aput-object v5, v0, v9

    .line 488
    .local v0, "intents":[Landroid/content/Intent;
    const-class v5, Lcom/parse/GcmBroadcastReceiver;

    invoke-static {v5, v3, v0}, Lcom/parse/ManifestInfo;->checkReceiver(Ljava/lang/Class;Ljava/lang/String;[Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 489
    sget-object v5, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_REQUIRED_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    goto :goto_0

    .line 492
    :cond_2
    new-array v1, v9, [Ljava/lang/String;

    const-string v5, "android.permission.VIBRATE"

    aput-object v5, v1, v8

    .line 496
    .local v1, "optionalPermissions":[Ljava/lang/String;
    invoke-static {v1}, Lcom/parse/ManifestInfo;->hasPermissions([Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 497
    sget-object v5, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_OPTIONAL_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    goto :goto_0

    .line 500
    :cond_3
    sget-object v5, Lcom/parse/ManifestInfo$ManifestCheckResult;->HAS_ALL_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    goto/16 :goto_0
.end method

.method private static getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 342
    invoke-static {}, Lcom/parse/ManifestInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method private static getApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flags"    # I

    .prologue
    .line 347
    :try_start_0
    invoke-static {p0}, Lcom/parse/ManifestInfo;->getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {p0}, Lcom/parse/ManifestInfo;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 349
    :goto_0
    return-object v1

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getApplicationMetadata(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 357
    const/16 v1, 0x80

    invoke-static {p0, v1}, Lcom/parse/ManifestInfo;->getApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 358
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 359
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 361
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 322
    invoke-static {}, Lcom/parse/Parse;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 96
    sget-object v1, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_0
    sget-object v0, Lcom/parse/ManifestInfo;->displayName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 98
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/parse/ManifestInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parse/ManifestInfo;->displayName:Ljava/lang/String;

    .line 100
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    sget-object v0, Lcom/parse/ManifestInfo;->displayName:Ljava/lang/String;

    return-object v0

    .line 100
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getGcmManifestMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".permission.C2D_MESSAGE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "gcmPackagePermission":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "make sure that these permissions are declared as children of the root <manifest> element:\n\n<uses-permission android:name=\"android.permission.INTERNET\" />\n<uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />\n<uses-permission android:name=\"android.permission.VIBRATE\" />\n<uses-permission android:name=\"android.permission.WAKE_LOCK\" />\n<uses-permission android:name=\"android.permission.GET_ACCOUNTS\" />\n<uses-permission android:name=\"com.google.android.c2dm.permission.RECEIVE\" />\n<permission android:name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android:protectionLevel=\"signature\" />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<uses-permission android:name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Also, please make sure that these services and broadcast receivers are declared as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "children of the <application> element:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<service android:name=\"com.parse.PushService\" />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<receiver android:name=\"com.parse.GcmBroadcastReceiver\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android:permission=\"com.google.android.c2dm.permission.SEND\">\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  <intent-filter>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    <action android:name=\"com.google.android.c2dm.intent.RECEIVE\" />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    <action android:name=\"com.google.android.c2dm.intent.REGISTRATION\" />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    <category android:name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  </intent-filter>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</receiver>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getIconId()I
    .locals 2

    .prologue
    .line 110
    sget-object v1, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 111
    :try_start_0
    sget v0, Lcom/parse/ManifestInfo;->iconId:I

    if-nez v0, :cond_0

    .line 112
    invoke-static {}, Lcom/parse/ManifestInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    sput v0, Lcom/parse/ManifestInfo;->iconId:I

    .line 114
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    sget v0, Lcom/parse/ManifestInfo;->iconId:I

    return v0

    .line 114
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static varargs getIntentReceivers([Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p0, "actions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, "packageName":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object v1, p0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 135
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x20

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 141
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 142
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 143
    .local v7, "receiverPackageName":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 144
    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 141
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 147
    .end local v7    # "receiverPackageName":Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method public static getLastModified()J
    .locals 8

    .prologue
    .line 45
    sget-object v2, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 46
    :try_start_0
    sget-wide v4, Lcom/parse/ManifestInfo;->lastModified:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 47
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/ManifestInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, "apkPath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sput-wide v4, Lcom/parse/ManifestInfo;->lastModified:J

    .line 50
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    sget-wide v2, Lcom/parse/ManifestInfo;->lastModified:J

    return-wide v2

    .line 50
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getNonePushTypeLogMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 291
    sget-object v1, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 292
    :try_start_0
    sget-object v0, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    sget-object v2, Lcom/parse/PushType;->NONE:Lcom/parse/PushType;

    if-ne v0, v2, :cond_0

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Push is not configured for this app because the app manifest is missing required declarations. Please add the following declarations to your app manifest to support either GCM or PPNS for push (or both). To enable GCM support, please "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/parse/ManifestInfo;->getGcmManifestMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "To enable PPNS support, please "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/parse/ManifestInfo;->getPpnsManifestMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    .line 298
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    monitor-exit v1

    goto :goto_0

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 365
    const/4 v0, 0x0

    .line 368
    .local v0, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 373
    :goto_0
    return-object v0

    .line 369
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 334
    invoke-static {}, Lcom/parse/ManifestInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ManifestInfo;->getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method private static getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 338
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method private static getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    invoke-static {}, Lcom/parse/ManifestInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ManifestInfo;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 330
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPpnsManifestMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    const-string v0, "make sure that these permissions are declared as children of the root <manifest> element:\n\n<uses-permission android:name=\"android.permission.INTERNET\" />\n<uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />\n<uses-permission android:name=\"android.permission.RECEIVE_BOOT_COMPLETED\" />\n<uses-permission android:name=\"android.permission.VIBRATE\" />\n<uses-permission android:name=\"android.permission.WAKE_LOCK\" />\n\nAlso, please make sure that these services and broadcast receivers are declared as children of the <application> element:\n\n<service android:name=\"com.parse.PushService\" />\n<receiver android:name=\"com.parse.ParseBroadcastReceiver\">\n  <intent-filter>\n    <action android:name=\"android.intent.action.BOOT_COMPLETED\" />\n    <action android:name=\"android.intent.action.USER_PRESENT\" />\n  </intent-filter>\n</receiver>\n"

    return-object v0
.end method

.method public static getPushType()Lcom/parse/PushType;
    .locals 8

    .prologue
    .line 208
    sget-object v5, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 209
    :try_start_0
    sget-object v4, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    if-nez v4, :cond_3

    .line 210
    invoke-static {}, Lcom/parse/ManifestInfo;->deviceSupportsGcm()Z

    move-result v0

    .line 211
    .local v0, "deviceSupportsGcm":Z
    invoke-static {}, Lcom/parse/ManifestInfo;->hasAnyGcmSpecificDeclaration()Z

    move-result v2

    .line 212
    .local v2, "hasAnyGcmSpecificDeclaration":Z
    invoke-static {}, Lcom/parse/ManifestInfo;->gcmSupportLevel()Lcom/parse/ManifestInfo$ManifestCheckResult;

    move-result-object v1

    .line 213
    .local v1, "gcmSupportLevel":Lcom/parse/ManifestInfo$ManifestCheckResult;
    invoke-static {}, Lcom/parse/ManifestInfo;->ppnsSupportLevel()Lcom/parse/ManifestInfo$ManifestCheckResult;

    move-result-object v3

    .line 215
    .local v3, "ppnsSupportLevel":Lcom/parse/ManifestInfo$ManifestCheckResult;
    if-eqz v0, :cond_4

    sget-object v4, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_REQUIRED_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    if-eq v1, v4, :cond_4

    .line 216
    sget-object v4, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    sput-object v4, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    .line 243
    :goto_0
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v4

    const/4 v6, 0x5

    if-gt v4, v6, :cond_0

    .line 244
    sget-object v4, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    sget-object v6, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    if-ne v4, v6, :cond_7

    sget-object v4, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_OPTIONAL_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    if-ne v1, v4, :cond_7

    .line 245
    const-string v4, "com.parse.ManifestInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Using GCM for push, but the app manifest is missing some optional declarations that should be added for maximum reliability. Please "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/parse/ManifestInfo;->getGcmManifestMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/parse/Parse;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_0
    :goto_1
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v4

    const/4 v6, 0x6

    if-gt v4, v6, :cond_2

    .line 261
    sget-object v4, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    sget-object v6, Lcom/parse/PushType;->NONE:Lcom/parse/PushType;

    if-ne v4, v6, :cond_2

    if-eqz v2, :cond_2

    .line 262
    if-nez v0, :cond_1

    .line 263
    const-string v4, "com.parse.ManifestInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot use GCM for push on this device because Google Play Services is not installed. Install Google Play Service from the Play Store, or enable PPNS as a fallback push service. To enable PPNS as a fallback push service on devices without Google Play support, please "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/parse/ManifestInfo;->getPpnsManifestMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_1
    sget-object v4, Lcom/parse/ManifestInfo$ManifestCheckResult;->HAS_ALL_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    if-eq v1, v4, :cond_2

    .line 271
    const-string v4, "com.parse.ManifestInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot use GCM for push because the app manifest is missing some required declarations. Please "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/parse/ManifestInfo;->getGcmManifestMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_2
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v4

    const/4 v6, 0x2

    if-gt v4, v6, :cond_3

    .line 278
    const-string v4, "com.parse.ManifestInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Using "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for push."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    sget-object v4, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    return-object v4

    .line 232
    :cond_4
    if-eqz v2, :cond_5

    if-nez v0, :cond_6

    :cond_5
    :try_start_1
    sget-object v4, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_REQUIRED_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    if-eq v3, v4, :cond_6

    .line 234
    sget-object v4, Lcom/parse/PushType;->PPNS:Lcom/parse/PushType;

    sput-object v4, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    goto/16 :goto_0

    .line 281
    .end local v1    # "gcmSupportLevel":Lcom/parse/ManifestInfo$ManifestCheckResult;
    .end local v2    # "hasAnyGcmSpecificDeclaration":Z
    .end local v3    # "ppnsSupportLevel":Lcom/parse/ManifestInfo$ManifestCheckResult;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 236
    .restart local v1    # "gcmSupportLevel":Lcom/parse/ManifestInfo$ManifestCheckResult;
    .restart local v2    # "hasAnyGcmSpecificDeclaration":Z
    .restart local v3    # "ppnsSupportLevel":Lcom/parse/ManifestInfo$ManifestCheckResult;
    :cond_6
    :try_start_2
    sget-object v4, Lcom/parse/PushType;->NONE:Lcom/parse/PushType;

    sput-object v4, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    goto/16 :goto_0

    .line 248
    :cond_7
    sget-object v4, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    sget-object v6, Lcom/parse/PushType;->PPNS:Lcom/parse/PushType;

    if-ne v4, v6, :cond_0

    sget-object v4, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_OPTIONAL_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    if-ne v3, v4, :cond_0

    .line 249
    const-string v4, "com.parse.ManifestInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Using PPNS for push, but the app manifest is missing some optional declarations that should be added for maximum reliability. Please "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/parse/ManifestInfo;->getPpnsManifestMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/parse/Parse;->logW(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method static getPushUsesBroadcastReceivers()Z
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 169
    sget-object v1, Lcom/parse/ManifestInfo;->pushUsesBroadcastReceivers:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 170
    sget-object v1, Lcom/parse/ManifestInfo;->pushUsesBroadcastReceivers:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 193
    .local v0, "intentsRegistered":I
    :goto_0
    return v1

    .line 173
    .end local v0    # "intentsRegistered":I
    :cond_0
    const/4 v0, 0x0

    .line 174
    .restart local v0    # "intentsRegistered":I
    const-string v1, "com.parse.push.intent.RECEIVE"

    invoke-static {v1}, Lcom/parse/ManifestInfo;->hasIntentReceiver(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    add-int/lit8 v0, v0, 0x1

    .line 178
    :cond_1
    const-string v1, "com.parse.push.intent.OPEN"

    invoke-static {v1}, Lcom/parse/ManifestInfo;->hasIntentReceiver(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    add-int/lit8 v0, v0, 0x1

    .line 182
    :cond_2
    const-string v1, "com.parse.push.intent.DELETE"

    invoke-static {v1}, Lcom/parse/ManifestInfo;->hasIntentReceiver(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 183
    add-int/lit8 v0, v0, 0x1

    .line 186
    :cond_3
    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_4

    .line 187
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "The Parse Push BroadcastReceiver must implement a filter for all of com.parse.push.intent.RECEIVE, com.parse.push.intent.OPEN, and com.parse.push.intent.DELETE"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_4
    if-ne v0, v2, :cond_5

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/parse/ManifestInfo;->pushUsesBroadcastReceivers:Ljava/lang/Boolean;

    .line 193
    sget-object v1, Lcom/parse/ManifestInfo;->pushUsesBroadcastReceivers:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 192
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static getReceiverInfo(Ljava/lang/Class;)Landroid/content/pm/ActivityInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/content/BroadcastReceiver;",
            ">;)",
            "Landroid/content/pm/ActivityInfo;"
        }
    .end annotation

    .prologue
    .line 389
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/content/BroadcastReceiver;>;"
    const/4 v0, 0x0

    .line 392
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    :try_start_0
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    invoke-static {}, Lcom/parse/ManifestInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 397
    :goto_0
    return-object v0

    .line 393
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getServiceInfo(Ljava/lang/Class;)Landroid/content/pm/ServiceInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;)",
            "Landroid/content/pm/ServiceInfo;"
        }
    .end annotation

    .prologue
    .line 377
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    const/4 v0, 0x0

    .line 380
    .local v0, "info":Landroid/content/pm/ServiceInfo;
    :try_start_0
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    invoke-static {}, Lcom/parse/ManifestInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 385
    :goto_0
    return-object v0

    .line 381
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getVersionCode()I
    .locals 5

    .prologue
    .line 60
    sget-object v2, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 61
    :try_start_0
    sget v1, Lcom/parse/ManifestInfo;->versionCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 63
    :try_start_1
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v1, Lcom/parse/ManifestInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    sget v1, Lcom/parse/ManifestInfo;->versionCode:I

    return v1

    .line 64
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_0
    move-exception v0

    .line 65
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string v1, "com.parse.ManifestInfo"

    const-string v3, "Couldn\'t find info about own package"

    invoke-static {v1, v3, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 78
    sget-object v2, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 79
    :try_start_0
    sget-object v1, Lcom/parse/ManifestInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 81
    :try_start_1
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/parse/ManifestInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    sget-object v1, Lcom/parse/ManifestInfo;->versionName:Ljava/lang/String;

    return-object v1

    .line 82
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_0
    move-exception v0

    .line 83
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string v1, "com.parse.ManifestInfo"

    const-string v3, "Couldn\'t find info about own package"

    invoke-static {v1, v3, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private static hasAnyGcmSpecificDeclaration()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 446
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "com.google.android.c2dm.permission.RECEIVE"

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/parse/ManifestInfo;->hasPermissions([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".permission.C2D_MESSAGE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/parse/ManifestInfo;->hasPermissions([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Lcom/parse/GcmBroadcastReceiver;

    invoke-static {v2}, Lcom/parse/ManifestInfo;->getReceiverInfo(Ljava/lang/Class;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 452
    :cond_1
    return v0
.end method

.method static hasIntentReceiver(Ljava/lang/String;)Z
    .locals 3
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 123
    new-array v2, v0, [Ljava/lang/String;

    aput-object p0, v2, v1

    invoke-static {v2}, Lcom/parse/ManifestInfo;->getIntentReceivers([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static varargs hasPermissions([Ljava/lang/String;)Z
    .locals 6
    .param p0, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 402
    .local v3, "permission":Ljava/lang/String;
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 403
    const/4 v4, 0x0

    .line 407
    .end local v3    # "permission":Ljava/lang/String;
    :goto_1
    return v4

    .line 401
    .restart local v3    # "permission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 407
    .end local v3    # "permission":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private static ppnsSupportLevel()Lcom/parse/ManifestInfo$ManifestCheckResult;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 508
    const-class v2, Lcom/parse/PushService;

    invoke-static {v2}, Lcom/parse/ManifestInfo;->getServiceInfo(Ljava/lang/Class;)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 509
    sget-object v2, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_REQUIRED_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    .line 533
    .local v1, "optionalPermissions":[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 512
    .end local v1    # "optionalPermissions":[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "android.permission.INTERNET"

    aput-object v2, v1, v4

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v2, v1, v5

    const-string v2, "android.permission.VIBRATE"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const-string v3, "android.permission.WAKE_LOCK"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "android.permission.RECEIVE_BOOT_COMPLETED"

    aput-object v3, v1, v2

    .line 520
    .restart local v1    # "optionalPermissions":[Ljava/lang/String;
    invoke-static {v1}, Lcom/parse/ManifestInfo;->hasPermissions([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 521
    sget-object v2, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_OPTIONAL_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    goto :goto_0

    .line 524
    :cond_1
    new-array v0, v6, [Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    aput-object v2, v0, v4

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    aput-object v2, v0, v5

    .line 529
    .local v0, "intents":[Landroid/content/Intent;
    const-class v2, Lcom/parse/ParseBroadcastReceiver;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/parse/ManifestInfo;->checkReceiver(Ljava/lang/Class;Ljava/lang/String;[Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 530
    sget-object v2, Lcom/parse/ManifestInfo$ManifestCheckResult;->MISSING_OPTIONAL_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    goto :goto_0

    .line 533
    :cond_2
    sget-object v2, Lcom/parse/ManifestInfo$ManifestCheckResult;->HAS_ALL_DECLARATIONS:Lcom/parse/ManifestInfo$ManifestCheckResult;

    goto :goto_0
.end method

.method static setPushType(Lcom/parse/PushType;)V
    .locals 2
    .param p0, "newPushType"    # Lcom/parse/PushType;

    .prologue
    .line 198
    sget-object v1, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 199
    :try_start_0
    sput-object p0, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    .line 200
    monitor-exit v1

    .line 201
    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setPushUsesBroadcastReceivers(Z)V
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 160
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/parse/ManifestInfo;->pushUsesBroadcastReceivers:Ljava/lang/Boolean;

    .line 161
    return-void
.end method
