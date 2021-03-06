.class public Lcom/parse/entity/mime/HttpMultipart;
.super Ljava/lang/Object;
.source "HttpMultipart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/entity/mime/HttpMultipart$1;
    }
.end annotation


# static fields
.field private static final CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

.field private static final FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

.field private static final TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;


# instance fields
.field private final boundary:Ljava/lang/String;

.field private final charset:Ljava/nio/charset/Charset;

.field private final mode:Lcom/parse/entity/mime/HttpMultipartMode;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/entity/mime/FormBodyPart;",
            ">;"
        }
    .end annotation
.end field

.field private final subType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 94
    sget-object v0, Lcom/parse/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, ": "

    invoke-static {v0, v1}, Lcom/parse/entity/mime/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lcom/parse/entity/mime/HttpMultipart;->FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

    .line 95
    sget-object v0, Lcom/parse/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "\r\n"

    invoke-static {v0, v1}, Lcom/parse/entity/mime/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lcom/parse/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    .line 96
    sget-object v0, Lcom/parse/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "--"

    invoke-static {v0, v1}, Lcom/parse/entity/mime/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lcom/parse/entity/mime/HttpMultipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "subType"    # Ljava/lang/String;
    .param p2, "boundary"    # Ljava/lang/String;

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/entity/mime/HttpMultipart;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;)V
    .locals 1
    .param p1, "subType"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "boundary"    # Ljava/lang/String;

    .prologue
    .line 140
    sget-object v0, Lcom/parse/entity/mime/HttpMultipartMode;->STRICT:Lcom/parse/entity/mime/HttpMultipartMode;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/parse/entity/mime/HttpMultipart;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Lcom/parse/entity/mime/HttpMultipartMode;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Lcom/parse/entity/mime/HttpMultipartMode;)V
    .locals 2
    .param p1, "subType"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "boundary"    # Ljava/lang/String;
    .param p4, "mode"    # Lcom/parse/entity/mime/HttpMultipartMode;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    if-nez p1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Multipart subtype may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    if-nez p3, :cond_1

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Multipart boundary may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1
    iput-object p1, p0, Lcom/parse/entity/mime/HttpMultipart;->subType:Ljava/lang/String;

    .line 124
    if-eqz p2, :cond_2

    .end local p2    # "charset":Ljava/nio/charset/Charset;
    :goto_0
    iput-object p2, p0, Lcom/parse/entity/mime/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    .line 125
    iput-object p3, p0, Lcom/parse/entity/mime/HttpMultipart;->boundary:Ljava/lang/String;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/entity/mime/HttpMultipart;->parts:Ljava/util/List;

    .line 127
    iput-object p4, p0, Lcom/parse/entity/mime/HttpMultipart;->mode:Lcom/parse/entity/mime/HttpMultipartMode;

    .line 128
    return-void

    .line 124
    .restart local p2    # "charset":Ljava/nio/charset/Charset;
    :cond_2
    sget-object p2, Lcom/parse/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    goto :goto_0
.end method

.method private doWriteTo(Lcom/parse/entity/mime/HttpMultipartMode;Ljava/io/OutputStream;Z)V
    .locals 11
    .param p1, "mode"    # Lcom/parse/entity/mime/HttpMultipartMode;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "writeContent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v9, p0, Lcom/parse/entity/mime/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Lcom/parse/entity/mime/HttpMultipart;->getBoundary()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/parse/entity/mime/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    .line 180
    .local v0, "boundary":Lorg/apache/http/util/ByteArrayBuffer;
    iget-object v9, p0, Lcom/parse/entity/mime/HttpMultipart;->parts:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/parse/entity/mime/FormBodyPart;

    .line 181
    .local v8, "part":Lcom/parse/entity/mime/FormBodyPart;
    sget-object v9, Lcom/parse/entity/mime/HttpMultipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v9, p2}, Lcom/parse/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 182
    invoke-static {v0, p2}, Lcom/parse/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 183
    sget-object v9, Lcom/parse/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v9, p2}, Lcom/parse/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 185
    invoke-virtual {v8}, Lcom/parse/entity/mime/FormBodyPart;->getHeader()Lcom/parse/entity/mime/Header;

    move-result-object v5

    .line 187
    .local v5, "header":Lcom/parse/entity/mime/Header;
    sget-object v9, Lcom/parse/entity/mime/HttpMultipart$1;->$SwitchMap$com$parse$entity$mime$HttpMultipartMode:[I

    invoke-virtual {p1}, Lcom/parse/entity/mime/HttpMultipartMode;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 205
    :cond_0
    :goto_1
    sget-object v9, Lcom/parse/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v9, p2}, Lcom/parse/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 207
    if-eqz p3, :cond_1

    .line 208
    invoke-virtual {v8}, Lcom/parse/entity/mime/FormBodyPart;->getBody()Lcom/parse/entity/mime/content/ContentBody;

    move-result-object v9

    invoke-interface {v9, p2}, Lcom/parse/entity/mime/content/ContentBody;->writeTo(Ljava/io/OutputStream;)V

    .line 210
    :cond_1
    sget-object v9, Lcom/parse/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v9, p2}, Lcom/parse/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 189
    :pswitch_0
    invoke-virtual {v5}, Lcom/parse/entity/mime/Header;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/entity/mime/MinimalField;

    .line 190
    .local v3, "field":Lcom/parse/entity/mime/MinimalField;
    invoke-static {v3, p2}, Lcom/parse/entity/mime/HttpMultipart;->writeField(Lcom/parse/entity/mime/MinimalField;Ljava/io/OutputStream;)V

    goto :goto_2

    .line 196
    .end local v3    # "field":Lcom/parse/entity/mime/MinimalField;
    .end local v7    # "i$":Ljava/util/Iterator;
    :pswitch_1
    invoke-virtual {v8}, Lcom/parse/entity/mime/FormBodyPart;->getHeader()Lcom/parse/entity/mime/Header;

    move-result-object v9

    const-string v10, "Content-Disposition"

    invoke-virtual {v9, v10}, Lcom/parse/entity/mime/Header;->getField(Ljava/lang/String;)Lcom/parse/entity/mime/MinimalField;

    move-result-object v1

    .line 197
    .local v1, "cd":Lcom/parse/entity/mime/MinimalField;
    iget-object v9, p0, Lcom/parse/entity/mime/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    invoke-static {v1, v9, p2}, Lcom/parse/entity/mime/HttpMultipart;->writeField(Lcom/parse/entity/mime/MinimalField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 198
    invoke-virtual {v8}, Lcom/parse/entity/mime/FormBodyPart;->getBody()Lcom/parse/entity/mime/content/ContentBody;

    move-result-object v9

    invoke-interface {v9}, Lcom/parse/entity/mime/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, "filename":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 200
    invoke-virtual {v8}, Lcom/parse/entity/mime/FormBodyPart;->getHeader()Lcom/parse/entity/mime/Header;

    move-result-object v9

    const-string v10, "Content-Type"

    invoke-virtual {v9, v10}, Lcom/parse/entity/mime/Header;->getField(Ljava/lang/String;)Lcom/parse/entity/mime/MinimalField;

    move-result-object v2

    .line 201
    .local v2, "ct":Lcom/parse/entity/mime/MinimalField;
    iget-object v9, p0, Lcom/parse/entity/mime/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    invoke-static {v2, v9, p2}, Lcom/parse/entity/mime/HttpMultipart;->writeField(Lcom/parse/entity/mime/MinimalField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    goto :goto_1

    .line 212
    .end local v1    # "cd":Lcom/parse/entity/mime/MinimalField;
    .end local v2    # "ct":Lcom/parse/entity/mime/MinimalField;
    .end local v4    # "filename":Ljava/lang/String;
    .end local v5    # "header":Lcom/parse/entity/mime/Header;
    .end local v8    # "part":Lcom/parse/entity/mime/FormBodyPart;
    :cond_2
    sget-object v9, Lcom/parse/entity/mime/HttpMultipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v9, p2}, Lcom/parse/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 213
    invoke-static {v0, p2}, Lcom/parse/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 214
    sget-object v9, Lcom/parse/entity/mime/HttpMultipart;->TWO_DASHES:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v9, p2}, Lcom/parse/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 215
    sget-object v9, Lcom/parse/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v9, p2}, Lcom/parse/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 216
    return-void

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;
    .locals 5
    .param p0, "charset"    # Ljava/nio/charset/Charset;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 56
    .local v1, "encoded":Ljava/nio/ByteBuffer;
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 57
    .local v0, "bab":Lorg/apache/http/util/ByteArrayBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 58
    return-object v0
.end method

.method private static writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    sget-object v1, Lcom/parse/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {v1, p0}, Lcom/parse/entity/mime/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    .line 75
    .local v0, "b":Lorg/apache/http/util/ByteArrayBuffer;
    invoke-static {v0, p1}, Lcom/parse/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 76
    return-void
.end method

.method private static writeBytes(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {p1, p0}, Lcom/parse/entity/mime/HttpMultipart;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    .line 69
    .local v0, "b":Lorg/apache/http/util/ByteArrayBuffer;
    invoke-static {v0, p2}, Lcom/parse/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 70
    return-void
.end method

.method private static writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "b"    # Lorg/apache/http/util/ByteArrayBuffer;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 64
    return-void
.end method

.method private static writeField(Lcom/parse/entity/mime/MinimalField;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "field"    # Lcom/parse/entity/mime/MinimalField;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/parse/entity/mime/MinimalField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/entity/mime/HttpMultipart;->writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 81
    sget-object v0, Lcom/parse/entity/mime/HttpMultipart;->FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p1}, Lcom/parse/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 82
    invoke-virtual {p0}, Lcom/parse/entity/mime/MinimalField;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/entity/mime/HttpMultipart;->writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 83
    sget-object v0, Lcom/parse/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p1}, Lcom/parse/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 84
    return-void
.end method

.method private static writeField(Lcom/parse/entity/mime/MinimalField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "field"    # Lcom/parse/entity/mime/MinimalField;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/parse/entity/mime/MinimalField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/parse/entity/mime/HttpMultipart;->writeBytes(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 89
    sget-object v0, Lcom/parse/entity/mime/HttpMultipart;->FIELD_SEP:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lcom/parse/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 90
    invoke-virtual {p0}, Lcom/parse/entity/mime/MinimalField;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/parse/entity/mime/HttpMultipart;->writeBytes(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    .line 91
    sget-object v0, Lcom/parse/entity/mime/HttpMultipart;->CR_LF:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lcom/parse/entity/mime/HttpMultipart;->writeBytes(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    .line 92
    return-void
.end method


# virtual methods
.method public addBodyPart(Lcom/parse/entity/mime/FormBodyPart;)V
    .locals 1
    .param p1, "part"    # Lcom/parse/entity/mime/FormBodyPart;

    .prologue
    .line 164
    if-nez p1, :cond_0

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/parse/entity/mime/HttpMultipart;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getBodyParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parse/entity/mime/FormBodyPart;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/parse/entity/mime/HttpMultipart;->parts:Ljava/util/List;

    return-object v0
.end method

.method public getBoundary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/parse/entity/mime/HttpMultipart;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/parse/entity/mime/HttpMultipart;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getMode()Lcom/parse/entity/mime/HttpMultipartMode;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/parse/entity/mime/HttpMultipart;->mode:Lcom/parse/entity/mime/HttpMultipartMode;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/parse/entity/mime/HttpMultipart;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalLength()J
    .locals 14

    .prologue
    const-wide/16 v10, -0x1

    .line 243
    const-wide/16 v2, 0x0

    .line 244
    .local v2, "contentLen":J
    iget-object v12, p0, Lcom/parse/entity/mime/HttpMultipart;->parts:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/parse/entity/mime/FormBodyPart;

    .line 245
    .local v9, "part":Lcom/parse/entity/mime/FormBodyPart;
    invoke-virtual {v9}, Lcom/parse/entity/mime/FormBodyPart;->getBody()Lcom/parse/entity/mime/content/ContentBody;

    move-result-object v0

    .line 246
    .local v0, "body":Lcom/parse/entity/mime/content/ContentBody;
    invoke-interface {v0}, Lcom/parse/entity/mime/content/ContentBody;->getContentLength()J

    move-result-wide v6

    .line 247
    .local v6, "len":J
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-ltz v12, :cond_1

    .line 248
    add-long/2addr v2, v6

    goto :goto_0

    .line 253
    .end local v0    # "body":Lcom/parse/entity/mime/content/ContentBody;
    .end local v6    # "len":J
    .end local v9    # "part":Lcom/parse/entity/mime/FormBodyPart;
    :cond_0
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 255
    .local v8, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v12, p0, Lcom/parse/entity/mime/HttpMultipart;->mode:Lcom/parse/entity/mime/HttpMultipartMode;

    const/4 v13, 0x0

    invoke-direct {p0, v12, v8, v13}, Lcom/parse/entity/mime/HttpMultipart;->doWriteTo(Lcom/parse/entity/mime/HttpMultipartMode;Ljava/io/OutputStream;Z)V

    .line 256
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 257
    .local v4, "extra":[B
    array-length v10, v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v10, v10

    add-long/2addr v10, v2

    .line 260
    .end local v4    # "extra":[B
    .end local v8    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_1
    :goto_1
    return-wide v10

    .line 258
    .restart local v8    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v1

    .line 260
    .local v1, "ex":Ljava/io/IOException;
    goto :goto_1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/parse/entity/mime/HttpMultipart;->mode:Lcom/parse/entity/mime/HttpMultipartMode;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/parse/entity/mime/HttpMultipart;->doWriteTo(Lcom/parse/entity/mime/HttpMultipartMode;Ljava/io/OutputStream;Z)V

    .line 227
    return-void
.end method
