.class public Lcom/parse/entity/mime/Header;
.super Ljava/lang/Object;
.source "Header.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/parse/entity/mime/MinimalField;",
        ">;"
    }
.end annotation


# instance fields
.field private final fieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/entity/mime/MinimalField;",
            ">;>;"
        }
    .end annotation
.end field

.field private final fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/entity/mime/MinimalField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/parse/entity/mime/Header;->fields:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/entity/mime/Header;->fieldMap:Ljava/util/Map;

    .line 52
    return-void
.end method


# virtual methods
.method public addField(Lcom/parse/entity/mime/MinimalField;)V
    .locals 4
    .param p1, "field"    # Lcom/parse/entity/mime/MinimalField;

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 66
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-virtual {p1}, Lcom/parse/entity/mime/MinimalField;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/parse/entity/mime/Header;->fieldMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 60
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Lcom/parse/entity/mime/MinimalField;>;"
    if-nez v1, :cond_1

    .line 61
    new-instance v1, Ljava/util/LinkedList;

    .end local v1    # "values":Ljava/util/List;, "Ljava/util/List<Lcom/parse/entity/mime/MinimalField;>;"
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 62
    .restart local v1    # "values":Ljava/util/List;, "Ljava/util/List<Lcom/parse/entity/mime/MinimalField;>;"
    iget-object v2, p0, Lcom/parse/entity/mime/Header;->fieldMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v2, p0, Lcom/parse/entity/mime/Header;->fields:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getField(Ljava/lang/String;)Lcom/parse/entity/mime/MinimalField;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 73
    if-nez p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-object v2

    .line 76
    :cond_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/parse/entity/mime/Header;->fieldMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 78
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parse/entity/mime/MinimalField;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 79
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/entity/mime/MinimalField;

    goto :goto_0
.end method

.method public getFields()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parse/entity/mime/MinimalField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/parse/entity/mime/Header;->fields:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getFields(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/parse/entity/mime/MinimalField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    const/4 v2, 0x0

    .line 93
    :goto_0
    return-object v2

    .line 88
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/parse/entity/mime/Header;->fieldMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 90
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parse/entity/mime/MinimalField;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 93
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/parse/entity/mime/MinimalField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/parse/entity/mime/Header;->fields:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public removeFields(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 98
    if-nez p1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v2

    .line 101
    :cond_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/parse/entity/mime/Header;->fieldMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 103
    .local v1, "removed":Ljava/util/List;, "Ljava/util/List<Lcom/parse/entity/mime/MinimalField;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 106
    iget-object v2, p0, Lcom/parse/entity/mime/Header;->fields:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 107
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0
.end method

.method public setField(Lcom/parse/entity/mime/MinimalField;)V
    .locals 8
    .param p1, "field"    # Lcom/parse/entity/mime/MinimalField;

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/parse/entity/mime/MinimalField;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/parse/entity/mime/Header;->fieldMap:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 116
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parse/entity/mime/MinimalField;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 117
    :cond_1
    invoke-virtual {p0, p1}, Lcom/parse/entity/mime/Header;->addField(Lcom/parse/entity/mime/MinimalField;)V

    goto :goto_0

    .line 120
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 121
    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    const/4 v1, -0x1

    .line 123
    .local v1, "firstOccurrence":I
    const/4 v2, 0x0

    .line 124
    .local v2, "index":I
    iget-object v6, p0, Lcom/parse/entity/mime/Header;->fields:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/parse/entity/mime/MinimalField;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 125
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/entity/mime/MinimalField;

    .line 126
    .local v0, "f":Lcom/parse/entity/mime/MinimalField;
    invoke-virtual {v0}, Lcom/parse/entity/mime/MinimalField;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/parse/entity/mime/MinimalField;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 127
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 128
    const/4 v6, -0x1

    if-ne v1, v6, :cond_3

    .line 129
    move v1, v2

    .line 124
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 133
    .end local v0    # "f":Lcom/parse/entity/mime/MinimalField;
    :cond_4
    iget-object v6, p0, Lcom/parse/entity/mime/Header;->fields:Ljava/util/List;

    invoke-interface {v6, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/parse/entity/mime/Header;->fields:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
