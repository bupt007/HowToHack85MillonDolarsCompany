.class Lcom/parse/Compatibility;
.super Ljava/lang/Object;
.source "Compatibility.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAPILevel()I
    .locals 5

    .prologue
    .line 46
    :try_start_0
    const-class v3, Landroid/os/Build$VERSION;

    const-string v4, "SDK_INT"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 47
    .local v0, "SDK_INT":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v1

    .line 58
    .local v1, "apiLevel":I
    :goto_0
    return v1

    .line 48
    .end local v1    # "apiLevel":I
    :catch_0
    move-exception v2

    .line 49
    .local v2, "e":Ljava/lang/SecurityException;
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 56
    .restart local v1    # "apiLevel":I
    goto :goto_0

    .line 50
    .end local v1    # "apiLevel":I
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 51
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 56
    .restart local v1    # "apiLevel":I
    goto :goto_0

    .line 52
    .end local v1    # "apiLevel":I
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v2

    .line 53
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 56
    .restart local v1    # "apiLevel":I
    goto :goto_0

    .line 54
    .end local v1    # "apiLevel":I
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 55
    .local v2, "e":Ljava/lang/IllegalAccessException;
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "apiLevel":I
    goto :goto_0
.end method

.method static getDropBoxServiceName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 72
    const-class v2, Landroid/content/Context;

    const-string v3, "DROPBOX_SERVICE"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 73
    .local v0, "serviceName":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    :cond_0
    return-object v1
.end method
