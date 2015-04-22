.class Lcom/parse/ParseWakeLock;
.super Ljava/lang/Object;
.source "ParseWakeLock.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.ParseWakeLock"

.field private static volatile hasWakeLockPermission:Z


# instance fields
.field private final wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x1

    sput-boolean v0, Lcom/parse/ParseWakeLock;->hasWakeLockPermission:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/PowerManager$WakeLock;)V
    .locals 0
    .param p1, "wakeLock"    # Landroid/os/PowerManager$WakeLock;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/parse/ParseWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 51
    return-void
.end method

.method public static acquireNewWakeLock(Landroid/content/Context;ILjava/lang/String;J)Lcom/parse/ParseWakeLock;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "timeout"    # J

    .prologue
    const/4 v6, 0x0

    .line 17
    const/4 v2, 0x0

    .line 19
    .local v2, "wl":Landroid/os/PowerManager$WakeLock;
    sget-boolean v3, Lcom/parse/ParseWakeLock;->hasWakeLockPermission:Z

    if-eqz v3, :cond_0

    .line 21
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 23
    .local v1, "pm":Landroid/os/PowerManager;
    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {v1, p1, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 29
    const-wide/16 v4, 0x0

    cmp-long v3, p3, v4

    if-nez v3, :cond_1

    .line 30
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v1    # "pm":Landroid/os/PowerManager;
    :cond_0
    :goto_0
    new-instance v3, Lcom/parse/ParseWakeLock;

    invoke-direct {v3, v2}, Lcom/parse/ParseWakeLock;-><init>(Landroid/os/PowerManager$WakeLock;)V

    return-object v3

    .line 32
    .restart local v1    # "pm":Landroid/os/PowerManager;
    :cond_1
    :try_start_1
    invoke-virtual {v2, p3, p4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 36
    .end local v1    # "pm":Landroid/os/PowerManager;
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v3, "com.parse.ParseWakeLock"

    const-string v4, "Failed to acquire a PowerManager.WakeLock. This isnecessary for reliable handling of pushes. Please add this to your Manifest.xml: <uses-permission android:name=\"android.permission.WAKE_LOCK\" /> "

    invoke-static {v3, v4}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sput-boolean v6, Lcom/parse/ParseWakeLock;->hasWakeLockPermission:Z

    .line 42
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/parse/ParseWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/parse/ParseWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 57
    :cond_0
    return-void
.end method
