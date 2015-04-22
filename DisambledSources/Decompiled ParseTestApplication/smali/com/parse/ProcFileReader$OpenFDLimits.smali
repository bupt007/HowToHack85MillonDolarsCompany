.class public Lcom/parse/ProcFileReader$OpenFDLimits;
.super Ljava/lang/Object;
.source "ProcFileReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ProcFileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenFDLimits"
.end annotation


# instance fields
.field public final hardLimit:Ljava/lang/String;

.field public final softLimit:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "softLimit"    # Ljava/lang/String;
    .param p2, "hardLimit"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/parse/ProcFileReader$OpenFDLimits;->softLimit:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/parse/ProcFileReader$OpenFDLimits;->hardLimit:Ljava/lang/String;

    .line 92
    return-void
.end method
