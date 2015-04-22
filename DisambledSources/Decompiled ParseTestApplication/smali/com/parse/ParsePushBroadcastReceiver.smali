.class public Lcom/parse/ParsePushBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ParsePushBroadcastReceiver.java"


# static fields
.field public static final ACTION_PUSH_DELETE:Ljava/lang/String; = "com.parse.push.intent.DELETE"

.field public static final ACTION_PUSH_OPEN:Ljava/lang/String; = "com.parse.push.intent.OPEN"

.field public static final ACTION_PUSH_RECEIVE:Ljava/lang/String; = "com.parse.push.intent.RECEIVE"

.field public static final KEY_PUSH_CHANNEL:Ljava/lang/String; = "com.parse.Channel"

.field public static final KEY_PUSH_DATA:Ljava/lang/String; = "com.parse.Data"

.field public static final PROPERTY_PUSH_ICON:Ljava/lang/String; = "com.parse.push.notification_icon"

.field protected static final SMALL_NOTIFICATION_MAX_CHARACTER_LIMIT:I = 0x26

.field private static final TAG:Ljava/lang/String; = "com.parse.ParsePushReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getPushData(Landroid/content/Intent;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 294
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "com.parse.Data"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    return-object v1

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "com.parse.ParsePushReceiver"

    const-string v2, "Unexpected JSONException when receiving push data: "

    invoke-static {v1, v2, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getActivity(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Class;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    sget-object v4, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "packageName":Ljava/lang/String;
    sget-object v4, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 235
    .local v2, "launchIntent":Landroid/content/Intent;
    if-nez v2, :cond_0

    .line 236
    const/4 v1, 0x0

    .line 245
    :goto_0
    return-object v1

    .line 238
    :cond_0
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "className":Ljava/lang/String;
    const/4 v1, 0x0

    .line 241
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 242
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected getLargeIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 289
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getNotification(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/Notification;
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 319
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/parse/ParsePushBroadcastReceiver;->getPushData(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v12

    .line 320
    .local v12, "pushData":Lorg/json/JSONObject;
    if-eqz v12, :cond_0

    const-string v16, "alert"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1

    const-string v16, "title"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 321
    :cond_0
    const/16 v16, 0x0

    .line 368
    :goto_0
    return-object v16

    .line 324
    :cond_1
    const-string v16, "title"

    invoke-static {}, Lcom/parse/ManifestInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 325
    .local v15, "title":Ljava/lang/String;
    const-string v16, "alert"

    const-string v17, "Notification received."

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "alert":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    const-string v17, "%s: %s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v15, v18, v19

    const/16 v19, 0x1

    aput-object v2, v18, v19

    invoke-static/range {v16 .. v18}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 328
    .local v14, "tickerText":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 330
    .local v7, "extras":Landroid/os/Bundle;
    new-instance v13, Ljava/util/Random;

    invoke-direct {v13}, Ljava/util/Random;-><init>()V

    .line 331
    .local v13, "random":Ljava/util/Random;
    invoke-virtual {v13}, Ljava/util/Random;->nextInt()I

    move-result v4

    .line 332
    .local v4, "contentIntentRequestCode":I
    invoke-virtual {v13}, Ljava/util/Random;->nextInt()I

    move-result v6

    .line 337
    .local v6, "deleteIntentRequestCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 339
    .local v10, "packageName":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v16, "com.parse.push.intent.OPEN"

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    .local v3, "contentIntent":Landroid/content/Intent;
    invoke-virtual {v3, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 341
    invoke-virtual {v3, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    new-instance v5, Landroid/content/Intent;

    const-string v16, "com.parse.push.intent.DELETE"

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v5, "deleteIntent":Landroid/content/Intent;
    invoke-virtual {v5, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 345
    invoke-virtual {v5, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const/high16 v16, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v4, v3, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 349
    .local v8, "pContentIntent":Landroid/app/PendingIntent;
    const/high16 v16, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v6, v5, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 354
    .local v9, "pDeleteIntent":Landroid/app/PendingIntent;
    new-instance v11, Lcom/parse/NotificationCompat$Builder;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/parse/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 355
    .local v11, "parseBuilder":Lcom/parse/NotificationCompat$Builder;
    invoke-virtual {v11, v15}, Lcom/parse/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/parse/NotificationCompat$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/parse/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/parse/NotificationCompat$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/parse/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Lcom/parse/NotificationCompat$Builder;

    move-result-object v16

    invoke-virtual/range {p0 .. p2}, Lcom/parse/ParsePushBroadcastReceiver;->getSmallIconId(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/parse/NotificationCompat$Builder;->setSmallIcon(I)Lcom/parse/NotificationCompat$Builder;

    move-result-object v16

    invoke-virtual/range {p0 .. p2}, Lcom/parse/ParsePushBroadcastReceiver;->getLargeIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/parse/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/parse/NotificationCompat$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/parse/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/parse/NotificationCompat$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/parse/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Lcom/parse/NotificationCompat$Builder;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/parse/NotificationCompat$Builder;->setAutoCancel(Z)Lcom/parse/NotificationCompat$Builder;

    move-result-object v16

    const/16 v17, -0x1

    invoke-virtual/range {v16 .. v17}, Lcom/parse/NotificationCompat$Builder;->setDefaults(I)Lcom/parse/NotificationCompat$Builder;

    .line 364
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x26

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 366
    new-instance v16, Lcom/parse/NotificationCompat$Builder$BigTextStyle;

    invoke-direct/range {v16 .. v16}, Lcom/parse/NotificationCompat$Builder$BigTextStyle;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/parse/NotificationCompat$Builder$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Lcom/parse/NotificationCompat$Builder$BigTextStyle;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/parse/NotificationCompat$Builder;->setStyle(Lcom/parse/NotificationCompat$Builder$Style;)Lcom/parse/NotificationCompat$Builder;

    .line 368
    :cond_2
    invoke-virtual {v11}, Lcom/parse/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v16

    goto/16 :goto_0
.end method

.method protected getSmallIconId(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 265
    invoke-static {p1}, Lcom/parse/ManifestInfo;->getApplicationMetadata(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    .line 266
    .local v1, "metaData":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 267
    .local v0, "explicitId":I
    if-eqz v1, :cond_0

    .line 268
    const-string v2, "com.parse.push.notification_icon"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 270
    :cond_0
    if-eqz v0, :cond_1

    .end local v0    # "explicitId":I
    :goto_0
    return v0

    .restart local v0    # "explicitId":I
    :cond_1
    invoke-static {}, Lcom/parse/ManifestInfo;->getIconId()I

    move-result v0

    goto :goto_0
.end method

.method protected onPushDismiss(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 170
    return-void
.end method

.method protected onPushOpen(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 186
    invoke-static {p2}, Lcom/parse/ParseAnalytics;->trackAppOpenedInBackground(Landroid/content/Intent;)Lbolts/Task;

    .line 188
    const/4 v4, 0x0

    .line 190
    .local v4, "uriString":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    const-string v5, "com.parse.Data"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 191
    .local v3, "pushData":Lorg/json/JSONObject;
    const-string v5, "uri"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 196
    .end local v3    # "pushData":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParsePushBroadcastReceiver;->getActivity(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Class;

    move-result-object v1

    .line 198
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz v4, :cond_0

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 204
    .local v0, "activityIntent":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 211
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_1

    .line 212
    invoke-static {p1, v1, v0}, Lcom/parse/TaskStackBuilderHelper;->startActivities(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;)V

    .line 218
    :goto_2
    return-void

    .line 192
    .end local v0    # "activityIntent":Landroid/content/Intent;
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    :catch_0
    move-exception v2

    .line 193
    .local v2, "e":Lorg/json/JSONException;
    const-string v5, "com.parse.ParsePushReceiver"

    const-string v6, "Unexpected JSONException when receiving push data: "

    invoke-static {v5, v6, v2}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 201
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0    # "activityIntent":Landroid/content/Intent;
    goto :goto_1

    .line 214
    :cond_1
    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 215
    const/high16 v5, 0x4000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 216
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method protected onPushReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 131
    const/4 v5, 0x0

    .line 133
    .local v5, "pushData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    const-string v7, "com.parse.Data"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "pushData":Lorg/json/JSONObject;
    .local v6, "pushData":Lorg/json/JSONObject;
    move-object v5, v6

    .line 139
    .end local v6    # "pushData":Lorg/json/JSONObject;
    .restart local v5    # "pushData":Lorg/json/JSONObject;
    :goto_0
    const/4 v0, 0x0

    .line 140
    .local v0, "action":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 141
    const-string v7, "action"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    :cond_0
    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 145
    .local v3, "extras":Landroid/os/Bundle;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 146
    .local v1, "broadcastIntent":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 147
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 152
    .end local v1    # "broadcastIntent":Landroid/content/Intent;
    .end local v3    # "extras":Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParsePushBroadcastReceiver;->getNotification(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object v4

    .line 154
    .local v4, "notification":Landroid/app/Notification;
    if-eqz v4, :cond_2

    .line 155
    invoke-static {}, Lcom/parse/ParseNotificationManager;->getInstance()Lcom/parse/ParseNotificationManager;

    move-result-object v7

    invoke-virtual {v7, p1, v4}, Lcom/parse/ParseNotificationManager;->showNotification(Landroid/content/Context;Landroid/app/Notification;)V

    .line 157
    :cond_2
    return-void

    .line 134
    .end local v0    # "action":Ljava/lang/String;
    .end local v4    # "notification":Landroid/app/Notification;
    :catch_0
    move-exception v2

    .line 135
    .local v2, "e":Lorg/json/JSONException;
    const-string v7, "com.parse.ParsePushReceiver"

    const-string v8, "Unexpected JSONException when receiving push data: "

    invoke-static {v7, v8, v2}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "intentAction":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 118
    :goto_1
    return-void

    .line 107
    :sswitch_0
    const-string v2, "com.parse.push.intent.RECEIVE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "com.parse.push.intent.DELETE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "com.parse.push.intent.OPEN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 109
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParsePushBroadcastReceiver;->onPushReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 112
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParsePushBroadcastReceiver;->onPushDismiss(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 115
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParsePushBroadcastReceiver;->onPushOpen(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 107
    :sswitch_data_0
    .sparse-switch
        -0x312a97af -> :sswitch_1
        -0x10101b23 -> :sswitch_0
        0x16587e70 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
