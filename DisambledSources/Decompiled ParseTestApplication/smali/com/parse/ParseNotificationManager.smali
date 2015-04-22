.class Lcom/parse/ParseNotificationManager;
.super Ljava/lang/Object;
.source "ParseNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseNotificationManager$Singleton;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "com.parse.ParseNotificationManager"


# instance fields
.field private iconIds:Landroid/util/SparseIntArray;

.field private final lock:Ljava/lang/Object;

.field private final notificationCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile shouldShowNotifications:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseNotificationManager;->lock:Ljava/lang/Object;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/parse/ParseNotificationManager;->notificationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseNotificationManager;->shouldShowNotifications:Z

    .line 37
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseNotificationManager;->iconIds:Landroid/util/SparseIntArray;

    return-void
.end method

.method public static getInstance()Lcom/parse/ParseNotificationManager;
    .locals 1

    .prologue
    .line 29
    # getter for: Lcom/parse/ParseNotificationManager$Singleton;->INSTANCE:Lcom/parse/ParseNotificationManager;
    invoke-static {}, Lcom/parse/ParseNotificationManager$Singleton;->access$000()Lcom/parse/ParseNotificationManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;ILandroid/os/Bundle;)Landroid/app/Notification;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p5, "iconId"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/app/Notification;"
        }
    .end annotation

    .prologue
    .line 84
    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    const/4 v3, 0x0

    .line 86
    .local v3, "notification":Landroid/app/Notification;
    invoke-virtual {p0, p1, p5}, Lcom/parse/ParseNotificationManager;->isValidIconId(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 87
    const-string v6, "com.parse.ParseNotificationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Icon id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not a valid drawable. Trying to fall back to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "default app icon."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/parse/ManifestInfo;->getIconId()I

    move-result p5

    .line 92
    :cond_0
    if-nez p5, :cond_1

    .line 93
    const-string v6, "com.parse.ParseNotificationManager"

    const-string v7, "Could not find a valid icon id for this app. This is required to create a Notification object to show in the status bar. Make sure that the <application> in in your Manifest.xml has a valid android:icon attribute."

    invoke-static {v6, v7}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_0
    return-object v3

    .line 96
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    if-nez p5, :cond_3

    .line 97
    :cond_2
    const-string v6, "com.parse.ParseNotificationManager"

    const-string v7, "Must specify non-null context, title, body, and activity class to show notification."

    invoke-static {v6, v7}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 101
    .local v4, "when":J
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p1, p4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .local v2, "name":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 105
    const/high16 v6, 0x10000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 107
    if-eqz p6, :cond_4

    .line 108
    invoke-virtual {v1, p6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 111
    :cond_4
    long-to-int v6, v4

    const/4 v7, 0x0

    invoke-static {p1, v6, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 114
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/Notification;

    .end local v3    # "notification":Landroid/app/Notification;
    invoke-direct {v3, p5, p3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 115
    .restart local v3    # "notification":Landroid/app/Notification;
    iget v6, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v3, Landroid/app/Notification;->flags:I

    .line 116
    iget v6, v3, Landroid/app/Notification;->defaults:I

    or-int/lit8 v6, v6, -0x1

    iput v6, v3, Landroid/app/Notification;->defaults:I

    .line 117
    invoke-virtual {v3, p1, p2, p3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public getNotificationCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parse/ParseNotificationManager;->notificationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getShouldShowNotifications()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/parse/ParseNotificationManager;->shouldShowNotifications:Z

    return v0
.end method

.method public isValidIconId(Landroid/content/Context;I)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v8, -0x1

    const/4 v3, 0x1

    .line 59
    iget-object v5, p0, Lcom/parse/ParseNotificationManager;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 60
    :try_start_0
    iget-object v6, p0, Lcom/parse/ParseNotificationManager;->iconIds:Landroid/util/SparseIntArray;

    const/4 v7, -0x1

    invoke-virtual {v6, p2, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 61
    .local v2, "valid":I
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    if-ne v2, v8, :cond_0

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 65
    .local v1, "resources":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 68
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_1
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 73
    :goto_0
    iget-object v5, p0, Lcom/parse/ParseNotificationManager;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 74
    if-nez v0, :cond_1

    move v2, v4

    .line 75
    :goto_1
    :try_start_2
    iget-object v6, p0, Lcom/parse/ParseNotificationManager;->iconIds:Landroid/util/SparseIntArray;

    invoke-virtual {v6, p2, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 76
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 79
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "resources":Landroid/content/res/Resources;
    :cond_0
    if-ne v2, v3, :cond_2

    :goto_2
    return v3

    .line 61
    .end local v2    # "valid":I
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "resources":Landroid/content/res/Resources;
    .restart local v2    # "valid":I
    :cond_1
    move v2, v3

    .line 74
    goto :goto_1

    .line 76
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "resources":Landroid/content/res/Resources;
    :cond_2
    move v3, v4

    .line 79
    goto :goto_2

    .line 69
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public setShouldShowNotifications(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/parse/ParseNotificationManager;->shouldShowNotifications:Z

    .line 45
    return-void
.end method

.method public showNotification(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notification"    # Landroid/app/Notification;

    .prologue
    .line 124
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 125
    iget-object v3, p0, Lcom/parse/ParseNotificationManager;->notificationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 127
    iget-boolean v3, p0, Lcom/parse/ParseNotificationManager;->shouldShowNotifications:Z

    if-eqz v3, :cond_0

    .line 129
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 133
    .local v1, "nm":Landroid/app/NotificationManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v2, v4

    .line 136
    .local v2, "notificationId":I
    :try_start_0
    invoke-virtual {v1, v2, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v1    # "nm":Landroid/app/NotificationManager;
    .end local v2    # "notificationId":I
    :cond_0
    :goto_0
    return-void

    .line 137
    .restart local v1    # "nm":Landroid/app/NotificationManager;
    .restart local v2    # "notificationId":I
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v3, 0x5

    iput v3, p2, Landroid/app/Notification;->defaults:I

    .line 140
    invoke-virtual {v1, v2, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public showNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p5, "iconId"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 148
    .local p4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-virtual/range {p0 .. p6}, Lcom/parse/ParseNotificationManager;->createNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;ILandroid/os/Bundle;)Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseNotificationManager;->showNotification(Landroid/content/Context;Landroid/app/Notification;)V

    .line 149
    return-void
.end method
