.class Lcom/parse/GcmRegistrar$Singleton;
.super Ljava/lang/Object;
.source "GcmRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/GcmRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/parse/GcmRegistrar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/parse/GcmRegistrar;

    invoke-static {}, Lcom/parse/Parse;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parse/GcmRegistrar;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/parse/GcmRegistrar$Singleton;->INSTANCE:Lcom/parse/GcmRegistrar;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
