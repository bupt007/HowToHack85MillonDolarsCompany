.class public Lcom/parse/codec/binary/Base32InputStream;
.super Lcom/parse/codec/binary/BaseNCodecInputStream;
.source "Base32InputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parse/codec/binary/Base32InputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "doEncode"    # Z

    .prologue
    .line 62
    new-instance v0, Lcom/parse/codec/binary/Base32;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/parse/codec/binary/Base32;-><init>(Z)V

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/codec/binary/BaseNCodecInputStream;-><init>(Ljava/io/InputStream;Lcom/parse/codec/binary/BaseNCodec;Z)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ZI[B)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "doEncode"    # Z
    .param p3, "lineLength"    # I
    .param p4, "lineSeparator"    # [B

    .prologue
    .line 82
    new-instance v0, Lcom/parse/codec/binary/Base32;

    invoke-direct {v0, p3, p4}, Lcom/parse/codec/binary/Base32;-><init>(I[B)V

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/codec/binary/BaseNCodecInputStream;-><init>(Ljava/io/InputStream;Lcom/parse/codec/binary/BaseNCodec;Z)V

    .line 83
    return-void
.end method
