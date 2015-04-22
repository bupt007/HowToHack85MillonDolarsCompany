.class Lcom/parse/CrashReportData;
.super Ljava/util/EnumMap;
.source "CrashReportData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap",
        "<",
        "Lcom/parse/ReportField;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONTINUE:I = 0x3

.field private static final IGNORE:I = 0x5

.field private static final KEY_DONE:I = 0x4

.field private static final NONE:I = 0x0

.field private static final PROP_DTD_NAME:Ljava/lang/String; = "http://java.sun.com/dtd/properties.dtd"

.field private static final SLASH:I = 0x1

.field private static final UNICODE:I = 0x2

.field private static lineSeparator:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x3912d07a70363e98L


# instance fields
.field protected defaults:Lcom/parse/CrashReportData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 541
    const-string v0, "\n"

    sput-object v0, Lcom/parse/CrashReportData;->lineSeparator:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    const-class v0, Lcom/parse/ReportField;

    invoke-direct {p0, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/parse/CrashReportData;)V
    .locals 1
    .param p1, "properties"    # Lcom/parse/CrashReportData;

    .prologue
    .line 95
    const-class v0, Lcom/parse/ReportField;

    invoke-direct {p0, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 96
    iput-object p1, p0, Lcom/parse/CrashReportData;->defaults:Lcom/parse/CrashReportData;

    .line 97
    return-void
.end method

.method private dumpString(Ljava/lang/Appendable;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "sb"    # Ljava/lang/Appendable;
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "key"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x5c

    const/16 v6, 0x20

    .line 100
    const/4 v2, 0x0

    .line 101
    .local v2, "i":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 102
    .local v4, "length":I
    if-nez p3, :cond_0

    if-ge v2, v4, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_0

    .line 103
    const-string v5, "\\ "

    invoke-interface {p1, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 104
    add-int/lit8 v2, v2, 0x1

    .line 107
    :cond_0
    :goto_0
    if-ge v2, v4, :cond_6

    .line 108
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 109
    .local v0, "ch":C
    packed-switch v0, :pswitch_data_0

    .line 123
    :pswitch_0
    if-eqz p3, :cond_1

    if-eq v0, v6, :cond_2

    :cond_1
    if-eq v0, v7, :cond_2

    const/16 v5, 0x23

    if-eq v0, v5, :cond_2

    const/16 v5, 0x21

    if-eq v0, v5, :cond_2

    const/16 v5, 0x3a

    if-ne v0, v5, :cond_3

    .line 128
    :cond_2
    invoke-interface {p1, v7}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 130
    :cond_3
    if-lt v0, v6, :cond_4

    const/16 v5, 0x7e

    if-gt v0, v5, :cond_4

    .line 131
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 107
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :pswitch_1
    const-string v5, "\\t"

    invoke-interface {p1, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 114
    :pswitch_2
    const-string v5, "\\n"

    invoke-interface {p1, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 117
    :pswitch_3
    const-string v5, "\\f"

    invoke-interface {p1, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 120
    :pswitch_4
    const-string v5, "\\r"

    invoke-interface {p1, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 133
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "hex":Ljava/lang/String;
    const-string v5, "\\u"

    invoke-interface {p1, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 135
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x4

    if-ge v3, v5, :cond_5

    .line 136
    const/16 v5, 0x30

    invoke-interface {p1, v5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 135
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 138
    :cond_5
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 142
    .end local v0    # "ch":C
    .end local v1    # "hex":Ljava/lang/String;
    .end local v3    # "j":I
    :cond_6
    return-void

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getWriter(Ljava/io/OutputStream;)Ljava/io/Writer;
    .locals 3
    .param p0, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 563
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "ISO8859_1"

    invoke-direct {v1, p0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :goto_0
    return-object v1

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, "ux":Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isEbcdic(Ljava/io/BufferedInputStream;)Z
    .locals 3
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 281
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    int-to-byte v0, v2

    .local v0, "b":B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 282
    const/16 v2, 0x23

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    const/16 v2, 0x3d

    if-ne v0, v2, :cond_2

    .line 294
    :cond_1
    :goto_0
    return v1

    .line 285
    :cond_2
    const/16 v2, 0x15

    if-ne v0, v2, :cond_0

    .line 286
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private keys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lcom/parse/ReportField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/parse/CrashReportData;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method private substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 815
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "&apos;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getProperty(Lcom/parse/ReportField;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Lcom/parse/ReportField;

    .prologue
    .line 154
    invoke-super {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 155
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/parse/CrashReportData;->defaults:Lcom/parse/CrashReportData;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/parse/CrashReportData;->defaults:Lcom/parse/CrashReportData;

    invoke-virtual {v1, p1}, Lcom/parse/CrashReportData;->getProperty(Lcom/parse/ReportField;)Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_0
    return-object v0
.end method

.method public getProperty(Lcom/parse/ReportField;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Lcom/parse/ReportField;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-super {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    .local v0, "property":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/parse/CrashReportData;->defaults:Lcom/parse/CrashReportData;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/parse/CrashReportData;->defaults:Lcom/parse/CrashReportData;

    invoke-virtual {v1, p1}, Lcom/parse/CrashReportData;->getProperty(Lcom/parse/ReportField;)Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_0
    if-nez v0, :cond_1

    .line 181
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_1
    move-object p2, v0

    goto :goto_0
.end method

.method public list(Ljava/io/PrintStream;)V
    .locals 8
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    const/4 v7, 0x0

    .line 193
    if-nez p1, :cond_0

    .line 194
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x50

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 197
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/parse/CrashReportData;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 198
    .local v3, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/parse/ReportField;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 199
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ReportField;

    .line 200
    .local v2, "key":Lcom/parse/ReportField;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    invoke-super {p0, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 203
    .local v4, "property":Ljava/lang/String;
    iget-object v1, p0, Lcom/parse/CrashReportData;->defaults:Lcom/parse/CrashReportData;

    .line 204
    .local v1, "def":Lcom/parse/CrashReportData;
    :goto_1
    if-nez v4, :cond_1

    .line 205
    invoke-virtual {v1, v2}, Lcom/parse/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "property":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 206
    .restart local v4    # "property":Ljava/lang/String;
    iget-object v1, v1, Lcom/parse/CrashReportData;->defaults:Lcom/parse/CrashReportData;

    goto :goto_1

    .line 208
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x28

    if-le v5, v6, :cond_2

    .line 209
    const/16 v5, 0x25

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v5, "..."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 212
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 217
    .end local v1    # "def":Lcom/parse/CrashReportData;
    .end local v2    # "key":Lcom/parse/ReportField;
    .end local v4    # "property":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public list(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v7, 0x0

    .line 228
    if-nez p1, :cond_0

    .line 229
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x50

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 232
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/parse/CrashReportData;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 233
    .local v3, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/parse/ReportField;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 234
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ReportField;

    .line 235
    .local v2, "key":Lcom/parse/ReportField;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 236
    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    invoke-super {p0, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 238
    .local v4, "property":Ljava/lang/String;
    iget-object v1, p0, Lcom/parse/CrashReportData;->defaults:Lcom/parse/CrashReportData;

    .line 239
    .local v1, "def":Lcom/parse/CrashReportData;
    :goto_1
    if-nez v4, :cond_1

    .line 240
    invoke-virtual {v1, v2}, Lcom/parse/CrashReportData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "property":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 241
    .restart local v4    # "property":Ljava/lang/String;
    iget-object v1, v1, Lcom/parse/CrashReportData;->defaults:Lcom/parse/CrashReportData;

    goto :goto_1

    .line 243
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x28

    if-le v5, v6, :cond_2

    .line 244
    const/16 v5, 0x25

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v5, "..."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 247
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 252
    .end local v1    # "def":Lcom/parse/CrashReportData;
    .end local v2    # "key":Lcom/parse/ReportField;
    .end local v4    # "property":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public declared-synchronized load(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    monitor-enter p0

    if-nez p1, :cond_0

    .line 265
    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 267
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 268
    .local v0, "bis":Ljava/io/BufferedInputStream;
    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 269
    invoke-direct {p0, v0}, Lcom/parse/CrashReportData;->isEbcdic(Ljava/io/BufferedInputStream;)Z

    move-result v1

    .line 270
    .local v1, "isEbcdic":Z
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 272
    if-nez v1, :cond_1

    .line 273
    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "ISO8859-1"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/parse/CrashReportData;->load(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    :goto_0
    monitor-exit p0

    return-void

    .line 275
    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v2}, Lcom/parse/CrashReportData;->load(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized load(Ljava/io/Reader;)V
    .locals 21
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    monitor-enter p0

    const/4 v11, 0x0

    .local v11, "mode":I
    const/16 v17, 0x0

    .local v17, "unicode":I
    const/4 v5, 0x0

    .line 327
    .local v5, "count":I
    const/16 v19, 0x28

    :try_start_0
    move/from16 v0, v19

    new-array v4, v0, [C

    .line 328
    .local v4, "buf":[C
    const/4 v14, 0x0

    .local v14, "offset":I
    const/4 v10, -0x1

    .line 329
    .local v10, "keyLength":I
    const/4 v7, 0x1

    .line 330
    .local v7, "firstChar":Z
    new-instance v3, Ljava/io/BufferedReader;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v3, "br":Ljava/io/BufferedReader;
    move v15, v14

    .line 333
    .end local v14    # "offset":I
    .local v15, "offset":I
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v8

    .line 336
    .local v8, "intVal":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_1

    if-nez v8, :cond_2

    .line 471
    :cond_1
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v11, v0, :cond_15

    const/16 v19, 0x4

    move/from16 v0, v19

    if-gt v5, v0, :cond_15

    .line 473
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "luni.08"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v4    # "buf":[C
    .end local v7    # "firstChar":Z
    .end local v8    # "intVal":I
    .end local v10    # "keyLength":I
    .end local v15    # "offset":I
    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    .line 339
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "buf":[C
    .restart local v7    # "firstChar":Z
    .restart local v8    # "intVal":I
    .restart local v10    # "keyLength":I
    .restart local v15    # "offset":I
    :cond_2
    int-to-char v13, v8

    .line 341
    .local v13, "nextChar":C
    :try_start_1
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v15, v0, :cond_3

    .line 342
    array-length v0, v4

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    new-array v12, v0, [C

    .line 343
    .local v12, "newBuf":[C
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v4, v0, v12, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 344
    move-object v4, v12

    .line 346
    .end local v12    # "newBuf":[C
    :cond_3
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v11, v0, :cond_7

    .line 347
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-static {v13, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 348
    .local v6, "digit":I
    if-ltz v6, :cond_5

    .line 349
    shl-int/lit8 v19, v17, 0x4

    add-int v17, v19, v6

    .line 350
    add-int/lit8 v5, v5, 0x1

    const/16 v19, 0x4

    move/from16 v0, v19

    if-lt v5, v0, :cond_0

    .line 357
    :cond_4
    const/4 v11, 0x0

    .line 358
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v19, v0

    aput-char v19, v4, v15

    .line 359
    const/16 v19, 0xa

    move/from16 v0, v19

    if-eq v13, v0, :cond_6

    const/16 v19, 0x85

    move/from16 v0, v19

    if-eq v13, v0, :cond_6

    move v15, v14

    .line 360
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    goto :goto_0

    .line 353
    :cond_5
    const/16 v19, 0x4

    move/from16 v0, v19

    if-gt v5, v0, :cond_4

    .line 355
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "luni.09"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    :cond_6
    move v15, v14

    .line 363
    .end local v6    # "digit":I
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    :cond_7
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_a

    .line 364
    const/4 v11, 0x0

    .line 365
    sparse-switch v13, :sswitch_data_0

    .line 464
    :cond_8
    :goto_1
    const/4 v7, 0x0

    .line 465
    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v11, v0, :cond_9

    .line 466
    move v10, v15

    .line 467
    const/4 v11, 0x0

    .line 469
    :cond_9
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    aput-char v13, v4, v15

    move v15, v14

    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    goto/16 :goto_0

    .line 367
    :sswitch_0
    const/4 v11, 0x3

    .line 368
    goto/16 :goto_0

    .line 371
    :sswitch_1
    const/4 v11, 0x5

    .line 372
    goto/16 :goto_0

    .line 374
    :sswitch_2
    const/16 v13, 0x8

    .line 375
    goto :goto_1

    .line 377
    :sswitch_3
    const/16 v13, 0xc

    .line 378
    goto :goto_1

    .line 380
    :sswitch_4
    const/16 v13, 0xa

    .line 381
    goto :goto_1

    .line 383
    :sswitch_5
    const/16 v13, 0xd

    .line 384
    goto :goto_1

    .line 386
    :sswitch_6
    const/16 v13, 0x9

    .line 387
    goto :goto_1

    .line 389
    :sswitch_7
    const/4 v11, 0x2

    .line 390
    const/4 v5, 0x0

    move/from16 v17, v5

    .line 391
    goto/16 :goto_0

    .line 394
    :cond_a
    sparse-switch v13, :sswitch_data_1

    .line 447
    :cond_b
    invoke-static {v13}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 448
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v11, v0, :cond_c

    .line 449
    const/4 v11, 0x5

    .line 452
    :cond_c
    if-eqz v15, :cond_0

    if-eq v15, v10, :cond_0

    const/16 v19, 0x5

    move/from16 v0, v19

    if-eq v11, v0, :cond_0

    .line 455
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_13

    .line 456
    const/4 v11, 0x4

    .line 457
    goto/16 :goto_0

    .line 397
    :sswitch_8
    if-eqz v7, :cond_b

    .line 399
    :cond_d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v8

    .line 400
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_0

    .line 402
    int-to-char v13, v8

    .line 405
    const/16 v19, 0xd

    move/from16 v0, v19

    if-eq v13, v0, :cond_0

    const/16 v19, 0xa

    move/from16 v0, v19

    if-eq v13, v0, :cond_0

    const/16 v19, 0x85

    move/from16 v0, v19

    if-ne v13, v0, :cond_d

    goto/16 :goto_0

    .line 413
    :sswitch_9
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v11, v0, :cond_e

    .line 414
    const/4 v11, 0x5

    .line 415
    goto/16 :goto_0

    .line 420
    :cond_e
    :sswitch_a
    const/4 v11, 0x0

    .line 421
    const/4 v7, 0x1

    .line 422
    if-gtz v15, :cond_f

    if-nez v15, :cond_11

    if-nez v10, :cond_11

    .line 423
    :cond_f
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_10

    .line 424
    move v10, v15

    .line 426
    :cond_10
    new-instance v16, Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-direct {v0, v4, v1, v15}, Ljava/lang/String;-><init>([CII)V

    .line 427
    .local v16, "temp":Ljava/lang/String;
    const-class v19, Lcom/parse/ReportField;

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v19

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/parse/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .end local v16    # "temp":Ljava/lang/String;
    :cond_11
    const/4 v10, -0x1

    .line 430
    const/4 v14, 0x0

    .end local v15    # "offset":I
    .restart local v14    # "offset":I
    move v15, v14

    .line 431
    .end local v14    # "offset":I
    .restart local v15    # "offset":I
    goto/16 :goto_0

    .line 433
    :sswitch_b
    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v11, v0, :cond_12

    .line 434
    move v10, v15

    .line 436
    :cond_12
    const/4 v11, 0x1

    .line 437
    goto/16 :goto_0

    .line 440
    :sswitch_c
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_b

    .line 441
    const/4 v11, 0x0

    .line 442
    move v10, v15

    .line 443
    goto/16 :goto_0

    .line 460
    :cond_13
    const/16 v19, 0x5

    move/from16 v0, v19

    if-eq v11, v0, :cond_14

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v11, v0, :cond_8

    .line 461
    :cond_14
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 475
    .end local v13    # "nextChar":C
    :cond_15
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v10, v0, :cond_16

    if-lez v15, :cond_16

    .line 476
    move v10, v15

    .line 478
    :cond_16
    if-ltz v10, :cond_18

    .line 479
    new-instance v16, Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-direct {v0, v4, v1, v15}, Ljava/lang/String;-><init>([CII)V

    .line 480
    .restart local v16    # "temp":Ljava/lang/String;
    const-class v19, Lcom/parse/ReportField;

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v9

    check-cast v9, Lcom/parse/ReportField;

    .line 481
    .local v9, "key":Lcom/parse/ReportField;
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 482
    .local v18, "value":Ljava/lang/String;
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_17

    .line 483
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\u0000"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 485
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/parse/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 487
    .end local v9    # "key":Lcom/parse/ReportField;
    .end local v16    # "temp":Ljava/lang/String;
    .end local v18    # "value":Ljava/lang/String;
    :cond_18
    monitor-exit p0

    return-void

    .line 365
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_0
        0x62 -> :sswitch_2
        0x66 -> :sswitch_3
        0x6e -> :sswitch_4
        0x72 -> :sswitch_5
        0x74 -> :sswitch_6
        0x75 -> :sswitch_7
        0x85 -> :sswitch_1
    .end sparse-switch

    .line 394
    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_9
        0xd -> :sswitch_a
        0x21 -> :sswitch_8
        0x23 -> :sswitch_8
        0x3a -> :sswitch_c
        0x3d -> :sswitch_c
        0x5c -> :sswitch_b
        0x85 -> :sswitch_a
    .end sparse-switch
.end method

.method public put(Lcom/parse/ReportField;Ljava/lang/String;Ljava/io/Writer;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Lcom/parse/ReportField;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 492
    invoke-virtual {p0, p1, p2}, Lcom/parse/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 493
    .local v0, "result":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 494
    invoke-virtual {p0, p3, p1, p2}, Lcom/parse/CrashReportData;->storeKeyValuePair(Ljava/io/Writer;Lcom/parse/ReportField;Ljava/lang/String;)V

    .line 496
    :cond_0
    return-object v0
.end method

.method public save(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 522
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/parse/CrashReportData;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :goto_0
    return-void

    .line 523
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setProperty(Lcom/parse/ReportField;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Lcom/parse/ReportField;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 538
    invoke-virtual {p0, p1, p2}, Lcom/parse/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized store(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 558
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/parse/CrashReportData;->getWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/parse/CrashReportData;->store(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    monitor-exit p0

    return-void

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized store(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 4
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 583
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 584
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/parse/CrashReportData;->storeComment(Ljava/io/Writer;Ljava/lang/String;)V

    .line 586
    :cond_0
    invoke-virtual {p0}, Lcom/parse/CrashReportData;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 587
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/parse/ReportField;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ReportField;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v3}, Lcom/parse/CrashReportData;->storeKeyValuePair(Ljava/io/Writer;Lcom/parse/ReportField;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 583
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/parse/ReportField;Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 589
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 590
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized storeComment(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 593
    monitor-enter p0

    :try_start_0
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 595
    sget-object v0, Lcom/parse/CrashReportData;->lineSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    monitor-exit p0

    return-void

    .line 593
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized storeKeyValuePair(Ljava/io/Writer;Lcom/parse/ReportField;Ljava/lang/String;)V
    .locals 6
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "key"    # Lcom/parse/ReportField;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 600
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lcom/parse/ReportField;->toString()Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, "keyString":Ljava/lang/String;
    if-nez p3, :cond_0

    const-string v3, ""

    .line 603
    .local v3, "valueString":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v2, v4, 0x1

    .line 605
    .local v2, "totalLength":I
    new-instance v1, Ljava/lang/StringBuilder;

    div-int/lit8 v4, v2, 0x5

    add-int/2addr v4, v2

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 607
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x1

    invoke-direct {p0, v1, v0, v4}, Lcom/parse/CrashReportData;->dumpString(Ljava/lang/Appendable;Ljava/lang/String;Z)V

    .line 608
    const/16 v4, 0x3d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 609
    const/4 v4, 0x0

    invoke-direct {p0, v1, v3, v4}, Lcom/parse/CrashReportData;->dumpString(Ljava/lang/Appendable;Ljava/lang/String;Z)V

    .line 610
    sget-object v4, Lcom/parse/CrashReportData;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    monitor-exit p0

    return-void

    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "totalLength":I
    .end local v3    # "valueString":Ljava/lang/String;
    :cond_0
    move-object v3, p3

    .line 601
    goto :goto_0

    .line 600
    .end local v0    # "keyString":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public storeToXML(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 729
    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, p2, v0}, Lcom/parse/CrashReportData;->storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method public declared-synchronized storeToXML(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 756
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 757
    :cond_0
    :try_start_0
    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 756
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 769
    :cond_1
    :try_start_1
    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_1
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 778
    .local v1, "encodingCanonicalName":Ljava/lang/String;
    :goto_0
    :try_start_2
    new-instance v6, Ljava/io/PrintStream;

    const/4 v7, 0x0

    invoke-direct {v6, p1, v7, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    .line 780
    .local v6, "printStream":Ljava/io/PrintStream;
    const-string v7, "<?xml version=\"1.0\" encoding=\""

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 781
    invoke-virtual {v6, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 782
    const-string v7, "\"?>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 784
    const-string v7, "<!DOCTYPE properties SYSTEM \""

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 785
    const-string v7, "http://java.sun.com/dtd/properties.dtd"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 786
    const-string v7, "\">"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 788
    const-string v7, "<properties>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 790
    if-eqz p2, :cond_2

    .line 791
    const-string v7, "<comment>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 792
    invoke-direct {p0, p2}, Lcom/parse/CrashReportData;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 793
    const-string v7, "</comment>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 796
    :cond_2
    invoke-virtual {p0}, Lcom/parse/CrashReportData;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 797
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/parse/ReportField;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parse/ReportField;

    invoke-virtual {v7}, Lcom/parse/ReportField;->toString()Ljava/lang/String;

    move-result-object v5

    .line 798
    .local v5, "keyValue":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 799
    .local v3, "entryValue":Ljava/lang/String;
    const-string v7, "<entry key=\""

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 800
    invoke-direct {p0, v5}, Lcom/parse/CrashReportData;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 801
    const-string v7, "\">"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 802
    invoke-direct {p0, v3}, Lcom/parse/CrashReportData;->substitutePredefinedEntries(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 803
    const-string v7, "</entry>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 770
    .end local v1    # "encodingCanonicalName":Ljava/lang/String;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/parse/ReportField;Ljava/lang/String;>;"
    .end local v3    # "entryValue":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "keyValue":Ljava/lang/String;
    .end local v6    # "printStream":Ljava/io/PrintStream;
    :catch_0
    move-exception v0

    .line 771
    .local v0, "e":Ljava/nio/charset/IllegalCharsetNameException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Warning: encoding name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is illegal, using UTF-8 as default encoding"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 772
    const-string v1, "UTF-8"

    .line 776
    .restart local v1    # "encodingCanonicalName":Ljava/lang/String;
    goto/16 :goto_0

    .line 773
    .end local v0    # "e":Ljava/nio/charset/IllegalCharsetNameException;
    .end local v1    # "encodingCanonicalName":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 774
    .local v0, "e":Ljava/nio/charset/UnsupportedCharsetException;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Warning: encoding "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not supported, using UTF-8 as default encoding"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 775
    const-string v1, "UTF-8"

    .restart local v1    # "encodingCanonicalName":Ljava/lang/String;
    goto/16 :goto_0

    .line 805
    .end local v0    # "e":Ljava/nio/charset/UnsupportedCharsetException;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "printStream":Ljava/io/PrintStream;
    :cond_3
    const-string v7, "</properties>"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 806
    invoke-virtual {v6}, Ljava/io/PrintStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 807
    monitor-exit p0

    return-void
.end method
