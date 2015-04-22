.class public final enum Lcom/parse/ParseRequest$Method;
.super Ljava/lang/Enum;
.source "ParseRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parse/ParseRequest$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parse/ParseRequest$Method;

.field public static final enum DELETE:Lcom/parse/ParseRequest$Method;

.field public static final enum GET:Lcom/parse/ParseRequest$Method;

.field public static final enum POST:Lcom/parse/ParseRequest$Method;

.field public static final enum PUT:Lcom/parse/ParseRequest$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lcom/parse/ParseRequest$Method;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ParseRequest$Method;->GET:Lcom/parse/ParseRequest$Method;

    new-instance v0, Lcom/parse/ParseRequest$Method;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/parse/ParseRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ParseRequest$Method;->POST:Lcom/parse/ParseRequest$Method;

    new-instance v0, Lcom/parse/ParseRequest$Method;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lcom/parse/ParseRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ParseRequest$Method;->PUT:Lcom/parse/ParseRequest$Method;

    new-instance v0, Lcom/parse/ParseRequest$Method;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lcom/parse/ParseRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ParseRequest$Method;->DELETE:Lcom/parse/ParseRequest$Method;

    .line 71
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/parse/ParseRequest$Method;

    sget-object v1, Lcom/parse/ParseRequest$Method;->GET:Lcom/parse/ParseRequest$Method;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parse/ParseRequest$Method;->POST:Lcom/parse/ParseRequest$Method;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parse/ParseRequest$Method;->PUT:Lcom/parse/ParseRequest$Method;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parse/ParseRequest$Method;->DELETE:Lcom/parse/ParseRequest$Method;

    aput-object v1, v0, v5

    sput-object v0, Lcom/parse/ParseRequest$Method;->$VALUES:[Lcom/parse/ParseRequest$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/parse/ParseRequest$Method;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "method":Lcom/parse/ParseRequest$Method;
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 92
    :goto_1
    return-object v0

    .line 76
    :sswitch_0
    const-string v2, "GET"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "POST"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "PUT"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "DELETE"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    .line 78
    :pswitch_0
    sget-object v0, Lcom/parse/ParseRequest$Method;->GET:Lcom/parse/ParseRequest$Method;

    .line 79
    goto :goto_1

    .line 81
    :pswitch_1
    sget-object v0, Lcom/parse/ParseRequest$Method;->POST:Lcom/parse/ParseRequest$Method;

    .line 82
    goto :goto_1

    .line 84
    :pswitch_2
    sget-object v0, Lcom/parse/ParseRequest$Method;->PUT:Lcom/parse/ParseRequest$Method;

    .line 85
    goto :goto_1

    .line 87
    :pswitch_3
    sget-object v0, Lcom/parse/ParseRequest$Method;->DELETE:Lcom/parse/ParseRequest$Method;

    .line 88
    goto :goto_1

    .line 76
    nop

    :sswitch_data_0
    .sparse-switch
        0x11336 -> :sswitch_0
        0x136ef -> :sswitch_2
        0x2590a0 -> :sswitch_1
        0x77f979ab -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parse/ParseRequest$Method;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    const-class v0, Lcom/parse/ParseRequest$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseRequest$Method;

    return-object v0
.end method

.method public static values()[Lcom/parse/ParseRequest$Method;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/parse/ParseRequest$Method;->$VALUES:[Lcom/parse/ParseRequest$Method;

    invoke-virtual {v0}, [Lcom/parse/ParseRequest$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parse/ParseRequest$Method;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, "string":Ljava/lang/String;
    sget-object v1, Lcom/parse/ParseRequest$9;->$SwitchMap$com$parse$ParseRequest$Method:[I

    invoke-virtual {p0}, Lcom/parse/ParseRequest$Method;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 114
    :goto_0
    return-object v0

    .line 100
    :pswitch_0
    const-string v0, "GET"

    .line 101
    goto :goto_0

    .line 103
    :pswitch_1
    const-string v0, "POST"

    .line 104
    goto :goto_0

    .line 106
    :pswitch_2
    const-string v0, "PUT"

    .line 107
    goto :goto_0

    .line 109
    :pswitch_3
    const-string v0, "DELETE"

    .line 110
    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
