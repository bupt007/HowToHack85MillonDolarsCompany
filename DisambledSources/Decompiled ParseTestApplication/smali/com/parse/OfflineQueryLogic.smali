.class Lcom/parse/OfflineQueryLogic;
.super Ljava/lang/Object;
.source "OfflineQueryLogic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/OfflineQueryLogic$SubQueryMatcher;,
        Lcom/parse/OfflineQueryLogic$Decider;,
        Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    }
.end annotation


# instance fields
.field private final store:Lcom/parse/OfflineStore;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;)V
    .locals 0
    .param p1, "store"    # Lcom/parse/OfflineStore;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/parse/OfflineQueryLogic;->store:Lcom/parse/OfflineStore;

    .line 46
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/parse/OfflineQueryLogic;->compareTo(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/parse/OfflineQueryLogic;)Lcom/parse/OfflineStore;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineQueryLogic;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic;->store:Lcom/parse/OfflineStore;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/OfflineQueryLogic;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineQueryLogic;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/parse/OfflineQueryLogic;->matchesInConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/parse/OfflineQueryLogic;->matchesEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/ParseQuery$KeyConstraints;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Lcom/parse/ParseQuery$KeyConstraints;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p0, p1, p2, p3}, Lcom/parse/OfflineQueryLogic;->matchesStatelessConstraint(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/ParseQuery$KeyConstraints;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/parse/OfflineQueryLogic;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineQueryLogic;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/OfflineQueryLogic;->fetchIncludeAsync(Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private static compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/OfflineQueryLogic$Decider;)Z
    .locals 1
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "decider"    # Lcom/parse/OfflineQueryLogic$Decider;

    .prologue
    .line 191
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 192
    check-cast p1, Ljava/util/List;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p0, p1, p2}, Lcom/parse/OfflineQueryLogic;->compareList(Ljava/lang/Object;Ljava/util/List;Lcom/parse/OfflineQueryLogic$Decider;)Z

    move-result v0

    .line 196
    :goto_0
    return v0

    .line 193
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    .line 194
    check-cast p1, Lorg/json/JSONArray;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p0, p1, p2}, Lcom/parse/OfflineQueryLogic;->compareArray(Ljava/lang/Object;Lorg/json/JSONArray;Lcom/parse/OfflineQueryLogic$Decider;)Z

    move-result v0

    goto :goto_0

    .line 196
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    invoke-interface {p2, p0, p1}, Lcom/parse/OfflineQueryLogic$Decider;->decide(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static compareArray(Ljava/lang/Object;Lorg/json/JSONArray;Lcom/parse/OfflineQueryLogic$Decider;)Z
    .locals 3
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p1, "values"    # Lorg/json/JSONArray;
    .param p2, "decider"    # Lcom/parse/OfflineQueryLogic$Decider;

    .prologue
    .line 172
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 174
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, p0, v2}, Lcom/parse/OfflineQueryLogic$Decider;->decide(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    const/4 v2, 0x1

    .line 182
    :goto_1
    return v2

    .line 177
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 172
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static compareList(Ljava/lang/Object;Ljava/util/List;Lcom/parse/OfflineQueryLogic$Decider;)Z
    .locals 3
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p2, "decider"    # Lcom/parse/OfflineQueryLogic$Decider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<*>;",
            "Lcom/parse/OfflineQueryLogic$Decider;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 161
    .local v1, "value":Ljava/lang/Object;
    invoke-interface {p2, p0, v1}, Lcom/parse/OfflineQueryLogic$Decider;->decide(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    const/4 v2, 0x1

    .line 165
    .end local v1    # "value":Ljava/lang/Object;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static compareTo(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p0, v4, :cond_0

    if-nez p0, :cond_3

    :cond_0
    move v0, v3

    .line 127
    .local v0, "lhsIsNullOrUndefined":Z
    :goto_0
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p1, v4, :cond_1

    if-nez p1, :cond_4

    :cond_1
    move v1, v3

    .line 129
    .local v1, "rhsIsNullOrUndefined":Z
    :goto_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_7

    .line 130
    :cond_2
    if-nez v0, :cond_5

    .line 142
    .end local p0    # "lhs":Ljava/lang/Object;
    .end local p1    # "rhs":Ljava/lang/Object;
    :goto_2
    return v3

    .end local v0    # "lhsIsNullOrUndefined":Z
    .end local v1    # "rhsIsNullOrUndefined":Z
    .restart local p0    # "lhs":Ljava/lang/Object;
    .restart local p1    # "rhs":Ljava/lang/Object;
    :cond_3
    move v0, v2

    .line 126
    goto :goto_0

    .restart local v0    # "lhsIsNullOrUndefined":Z
    :cond_4
    move v1, v2

    .line 127
    goto :goto_1

    .line 132
    .restart local v1    # "rhsIsNullOrUndefined":Z
    :cond_5
    if-nez v1, :cond_6

    .line 133
    const/4 v3, -0x1

    goto :goto_2

    :cond_6
    move v3, v2

    .line 135
    goto :goto_2

    .line 137
    :cond_7
    instance-of v4, p0, Ljava/util/Date;

    if-eqz v4, :cond_8

    instance-of v4, p1, Ljava/util/Date;

    if-eqz v4, :cond_8

    .line 138
    check-cast p0, Ljava/util/Date;

    .end local p0    # "lhs":Ljava/lang/Object;
    check-cast p1, Ljava/util/Date;

    .end local p1    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    goto :goto_2

    .line 139
    .restart local p0    # "lhs":Ljava/lang/Object;
    .restart local p1    # "rhs":Ljava/lang/Object;
    :cond_8
    instance-of v4, p0, Ljava/lang/String;

    if-eqz v4, :cond_9

    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 140
    check-cast p0, Ljava/lang/String;

    .end local p0    # "lhs":Ljava/lang/Object;
    check-cast p1, Ljava/lang/String;

    .end local p1    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    .line 141
    .restart local p0    # "lhs":Ljava/lang/Object;
    .restart local p1    # "rhs":Ljava/lang/Object;
    :cond_9
    instance-of v4, p0, Ljava/lang/Number;

    if-eqz v4, :cond_a

    instance-of v4, p1, Ljava/lang/Number;

    if-eqz v4, :cond_a

    .line 142
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "lhs":Ljava/lang/Object;
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "rhs":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/parse/Parse;->compareNumbers(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v3

    goto :goto_2

    .line 144
    .restart local p0    # "lhs":Ljava/lang/Object;
    .restart local p1    # "rhs":Ljava/lang/Object;
    :cond_a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Cannot compare %s against %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v2

    aput-object p1, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private createDontSelectMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    .locals 2
    .param p1, "user"    # Lcom/parse/ParseUser;
    .param p2, "constraint"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseUser;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 618
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/OfflineQueryLogic;->createSelectMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v0

    .line 619
    .local v0, "selectMatcher":Lcom/parse/OfflineQueryLogic$ConstraintMatcher;, "Lcom/parse/OfflineQueryLogic$ConstraintMatcher<TT;>;"
    new-instance v1, Lcom/parse/OfflineQueryLogic$9;

    invoke-direct {v1, p0, p1, v0}, Lcom/parse/OfflineQueryLogic$9;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Lcom/parse/OfflineQueryLogic$ConstraintMatcher;)V

    return-object v1
.end method

.method private createInQueryMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    .locals 2
    .param p1, "user"    # Lcom/parse/ParseUser;
    .param p2, "constraint"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseUser;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 561
    move-object v0, p2

    check-cast v0, Lcom/parse/ParseQuery;

    .line 562
    .local v0, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    new-instance v1, Lcom/parse/OfflineQueryLogic$6;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/parse/OfflineQueryLogic$6;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Lcom/parse/ParseQuery;Ljava/lang/String;)V

    return-object v1
.end method

.method private createMatcher(Lcom/parse/ParseUser;Lcom/parse/ParseQuery$QueryConstraints;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    .locals 12
    .param p1, "user"    # Lcom/parse/ParseUser;
    .param p2, "queryConstraints"    # Lcom/parse/ParseQuery$QueryConstraints;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseUser;",
            "Lcom/parse/ParseQuery$QueryConstraints;",
            ")",
            "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 712
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 713
    .local v9, "matchers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parse/OfflineQueryLogic$ConstraintMatcher<TT;>;>;"
    invoke-virtual {p2}, Lcom/parse/ParseQuery$QueryConstraints;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 714
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p2, v4}, Lcom/parse/ParseQuery$QueryConstraints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 716
    .local v10, "queryConstraintValue":Ljava/lang/Object;
    const-string v0, "$or"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 721
    check-cast v10, Ljava/util/ArrayList;

    .end local v10    # "queryConstraintValue":Ljava/lang/Object;
    invoke-direct {p0, p1, v10}, Lcom/parse/OfflineQueryLogic;->createOrMatcher(Lcom/parse/ParseUser;Ljava/util/ArrayList;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v8

    .line 723
    .local v8, "matcher":Lcom/parse/OfflineQueryLogic$ConstraintMatcher;, "Lcom/parse/OfflineQueryLogic$ConstraintMatcher<TT;>;"
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 725
    .end local v8    # "matcher":Lcom/parse/OfflineQueryLogic$ConstraintMatcher;, "Lcom/parse/OfflineQueryLogic$ConstraintMatcher<TT;>;"
    .restart local v10    # "queryConstraintValue":Ljava/lang/Object;
    :cond_1
    instance-of v0, v10, Lcom/parse/ParseQuery$KeyConstraints;

    if-eqz v0, :cond_2

    move-object v5, v10

    .line 729
    check-cast v5, Lcom/parse/ParseQuery$KeyConstraints;

    .line 730
    .local v5, "keyConstraints":Lcom/parse/ParseQuery$KeyConstraints;
    invoke-virtual {v5}, Lcom/parse/ParseQuery$KeyConstraints;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 731
    .local v2, "operator":Ljava/lang/String;
    invoke-virtual {v5, v2}, Lcom/parse/ParseQuery$KeyConstraints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "keyConstraintValue":Ljava/lang/Object;
    move-object v0, p0

    move-object v1, p1

    .line 732
    invoke-direct/range {v0 .. v5}, Lcom/parse/OfflineQueryLogic;->createMatcher(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseQuery$KeyConstraints;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v8

    .line 734
    .restart local v8    # "matcher":Lcom/parse/OfflineQueryLogic$ConstraintMatcher;, "Lcom/parse/OfflineQueryLogic$ConstraintMatcher<TT;>;"
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 737
    .end local v2    # "operator":Ljava/lang/String;
    .end local v3    # "keyConstraintValue":Ljava/lang/Object;
    .end local v5    # "keyConstraints":Lcom/parse/ParseQuery$KeyConstraints;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "matcher":Lcom/parse/OfflineQueryLogic$ConstraintMatcher;, "Lcom/parse/OfflineQueryLogic$ConstraintMatcher<TT;>;"
    :cond_2
    instance-of v0, v10, Lcom/parse/ParseQuery$RelationConstraint;

    if-eqz v0, :cond_3

    move-object v11, v10

    .line 741
    check-cast v11, Lcom/parse/ParseQuery$RelationConstraint;

    .line 742
    .local v11, "relation":Lcom/parse/ParseQuery$RelationConstraint;
    new-instance v0, Lcom/parse/OfflineQueryLogic$12;

    invoke-direct {v0, p0, p1, v11}, Lcom/parse/OfflineQueryLogic$12;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Lcom/parse/ParseQuery$RelationConstraint;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 753
    .end local v11    # "relation":Lcom/parse/ParseQuery$RelationConstraint;
    :cond_3
    new-instance v0, Lcom/parse/OfflineQueryLogic$13;

    invoke-direct {v0, p0, p1, v4, v10}, Lcom/parse/OfflineQueryLogic$13;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 771
    .end local v4    # "key":Ljava/lang/String;
    .end local v10    # "queryConstraintValue":Ljava/lang/Object;
    :cond_4
    new-instance v0, Lcom/parse/OfflineQueryLogic$14;

    invoke-direct {v0, p0, p1, v9}, Lcom/parse/OfflineQueryLogic$14;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private createMatcher(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseQuery$KeyConstraints;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    .locals 7
    .param p1, "user"    # Lcom/parse/ParseUser;
    .param p2, "operator"    # Ljava/lang/String;
    .param p3, "constraint"    # Ljava/lang/Object;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "allKeyConstraints"    # Lcom/parse/ParseQuery$KeyConstraints;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseUser;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery$KeyConstraints;",
            ")",
            "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 638
    const-string v0, "$inQuery"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    invoke-direct {p0, p1, p3, p4}, Lcom/parse/OfflineQueryLogic;->createInQueryMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v0

    .line 654
    :goto_0
    return-object v0

    .line 641
    :cond_0
    const-string v0, "$notInQuery"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 642
    invoke-direct {p0, p1, p3, p4}, Lcom/parse/OfflineQueryLogic;->createNotInQueryMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v0

    goto :goto_0

    .line 644
    :cond_1
    const-string v0, "$select"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 645
    invoke-direct {p0, p1, p3, p4}, Lcom/parse/OfflineQueryLogic;->createSelectMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v0

    goto :goto_0

    .line 647
    :cond_2
    const-string v0, "$dontSelect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 648
    invoke-direct {p0, p1, p3, p4}, Lcom/parse/OfflineQueryLogic;->createDontSelectMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v0

    goto :goto_0

    .line 654
    :cond_3
    new-instance v0, Lcom/parse/OfflineQueryLogic$10;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/parse/OfflineQueryLogic$10;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/parse/ParseQuery$KeyConstraints;)V

    goto :goto_0
.end method

.method private createNotInQueryMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    .locals 2
    .param p1, "user"    # Lcom/parse/ParseUser;
    .param p2, "constraint"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseUser;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 576
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/OfflineQueryLogic;->createInQueryMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v0

    .line 577
    .local v0, "inQueryMatcher":Lcom/parse/OfflineQueryLogic$ConstraintMatcher;, "Lcom/parse/OfflineQueryLogic$ConstraintMatcher<TT;>;"
    new-instance v1, Lcom/parse/OfflineQueryLogic$7;

    invoke-direct {v1, p0, p1, v0}, Lcom/parse/OfflineQueryLogic$7;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Lcom/parse/OfflineQueryLogic$ConstraintMatcher;)V

    return-object v1
.end method

.method private createOrMatcher(Lcom/parse/ParseUser;Ljava/util/ArrayList;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    .locals 5
    .param p1, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseUser;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parse/ParseQuery$QueryConstraints;",
            ">;)",
            "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 675
    .local p2, "queries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parse/ParseQuery$QueryConstraints;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 676
    .local v3, "matchers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parse/OfflineQueryLogic$ConstraintMatcher<TT;>;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseQuery$QueryConstraints;

    .line 677
    .local v0, "constraints":Lcom/parse/ParseQuery$QueryConstraints;
    invoke-direct {p0, p1, v0}, Lcom/parse/OfflineQueryLogic;->createMatcher(Lcom/parse/ParseUser;Lcom/parse/ParseQuery$QueryConstraints;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v2

    .line 678
    .local v2, "matcher":Lcom/parse/OfflineQueryLogic$ConstraintMatcher;, "Lcom/parse/OfflineQueryLogic$ConstraintMatcher<TT;>;"
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 683
    .end local v0    # "constraints":Lcom/parse/ParseQuery$QueryConstraints;
    .end local v2    # "matcher":Lcom/parse/OfflineQueryLogic$ConstraintMatcher;, "Lcom/parse/OfflineQueryLogic$ConstraintMatcher<TT;>;"
    :cond_0
    new-instance v4, Lcom/parse/OfflineQueryLogic$11;

    invoke-direct {v4, p0, p1, v3}, Lcom/parse/OfflineQueryLogic$11;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Ljava/util/ArrayList;)V

    return-object v4
.end method

.method private createSelectMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    .locals 7
    .param p1, "user"    # Lcom/parse/ParseUser;
    .param p2, "constraint"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseUser;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 595
    move-object v6, p2

    check-cast v6, Lorg/json/JSONObject;

    .line 596
    .local v6, "constraintJSON":Lorg/json/JSONObject;
    const-string v0, "query"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseQuery;

    .line 597
    .local v3, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const-string v0, "key"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 598
    .local v5, "resultKey":Ljava/lang/String;
    new-instance v0, Lcom/parse/OfflineQueryLogic$8;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/parse/OfflineQueryLogic$8;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Lcom/parse/ParseQuery;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private fetchIncludeAsync(Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 18
    .param p1, "container"    # Ljava/lang/Object;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 959
    if-nez p1, :cond_1

    .line 960
    const/4 v3, 0x0

    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v17

    .line 1016
    :cond_0
    :goto_0
    return-object v17

    .line 964
    :cond_1
    move-object/from16 v0, p1

    instance-of v3, v0, Lorg/json/JSONArray;

    if-eqz v3, :cond_2

    move-object/from16 v5, p1

    .line 965
    check-cast v5, Lorg/json/JSONArray;

    .line 967
    .local v5, "array":Lorg/json/JSONArray;
    const/4 v3, 0x0

    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v17

    .line 968
    .local v17, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v9, v3, :cond_0

    .line 969
    move v6, v9

    .line 970
    .local v6, "index":I
    new-instance v3, Lcom/parse/OfflineQueryLogic$17;

    move-object/from16 v4, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/parse/OfflineQueryLogic$17;-><init>(Lcom/parse/OfflineQueryLogic;Lorg/json/JSONArray;ILjava/lang/String;Lcom/parse/ParseSQLiteDatabase;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v17

    .line 968
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 979
    .end local v5    # "array":Lorg/json/JSONArray;
    .end local v6    # "index":I
    .end local v9    # "i":I
    .end local v17    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_2
    move-object/from16 v0, p1

    instance-of v3, v0, Ljava/util/List;

    if-eqz v3, :cond_3

    move-object/from16 v13, p1

    .line 980
    check-cast v13, Ljava/util/List;

    .line 982
    .local v13, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v3, 0x0

    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v17

    .line 983
    .restart local v17    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 984
    .local v11, "item":Ljava/lang/Object;
    new-instance v3, Lcom/parse/OfflineQueryLogic$18;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v3, v0, v11, v1, v2}, Lcom/parse/OfflineQueryLogic$18;-><init>(Lcom/parse/OfflineQueryLogic;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v17

    .line 990
    goto :goto_2

    .line 995
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "item":Ljava/lang/Object;
    .end local v13    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v17    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_3
    if-nez p2, :cond_6

    .line 996
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 999
    const/16 v17, 0x0

    goto :goto_0

    .line 1000
    :cond_4
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/parse/ParseObject;

    if-eqz v3, :cond_5

    move-object/from16 v14, p1

    .line 1001
    check-cast v14, Lcom/parse/ParseObject;

    .line 1002
    .local v14, "object":Lcom/parse/ParseObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parse/OfflineQueryLogic;->store:Lcom/parse/OfflineStore;

    move-object/from16 v0, p3

    invoke-virtual {v3, v14, v0}, Lcom/parse/OfflineStore;->fetchLocallyAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v3

    invoke-virtual {v3}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v17

    goto/16 :goto_0

    .line 1004
    .end local v14    # "object":Lcom/parse/ParseObject;
    :cond_5
    new-instance v3, Lcom/parse/ParseException;

    const/16 v4, 0x79

    const-string v7, "include is invalid for non-ParseObjects"

    invoke-direct {v3, v4, v7}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-static {v3}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v17

    goto/16 :goto_0

    .line 1011
    :cond_6
    const-string v3, "\\."

    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v15

    .line 1012
    .local v15, "parts":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v12, v15, v3

    .line 1013
    .local v12, "key":Ljava/lang/String;
    array-length v3, v15

    const/4 v4, 0x1

    if-le v3, v4, :cond_7

    const/4 v3, 0x1

    aget-object v16, v15, v3

    .line 1016
    .local v16, "rest":Ljava/lang/String;
    :goto_3
    const/4 v3, 0x0

    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v3

    new-instance v4, Lcom/parse/OfflineQueryLogic$20;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v4, v0, v1, v2, v12}, Lcom/parse/OfflineQueryLogic$20;-><init>(Lcom/parse/OfflineQueryLogic;Ljava/lang/Object;Lcom/parse/ParseSQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v3

    new-instance v4, Lcom/parse/OfflineQueryLogic$19;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p3

    invoke-direct {v4, v0, v1, v2}, Lcom/parse/OfflineQueryLogic$19;-><init>(Lcom/parse/OfflineQueryLogic;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v3, v4}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v17

    goto/16 :goto_0

    .line 1013
    .end local v16    # "rest":Ljava/lang/String;
    :cond_7
    const/16 v16, 0x0

    goto :goto_3
.end method

.method private getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "container"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getValue(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 10
    .param p1, "container"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/16 v9, 0x79

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 57
    const-string v5, "."

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 58
    const-string v4, "\\."

    const/4 v5, 0x2

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "parts":[Ljava/lang/String;
    aget-object v4, v1, v8

    add-int/lit8 v5, p3, 0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    .line 64
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_2

    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq v3, v4, :cond_2

    instance-of v4, v3, Ljava/util/Map;

    if-nez v4, :cond_2

    instance-of v4, v3, Lorg/json/JSONObject;

    if-nez v4, :cond_2

    .line 66
    if-lez p3, :cond_1

    .line 67
    const/4 v2, 0x0

    .line 69
    .local v2, "restFormat":Ljava/lang/Object;
    :try_start_0
    invoke-static {}, Lcom/parse/PointerEncodingStrategy;->get()Lcom/parse/PointerEncodingStrategy;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 73
    .end local v2    # "restFormat":Ljava/lang/Object;
    :goto_0
    instance-of v4, v2, Lorg/json/JSONObject;

    if-eqz v4, :cond_1

    .line 74
    aget-object v4, v1, v7

    add-int/lit8 v5, p3, 0x1

    invoke-direct {p0, v2, v4, v5}, Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    .line 113
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    .end local p1    # "container":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-object v4

    .line 77
    .restart local v1    # "parts":[Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/Object;
    .restart local p1    # "container":Ljava/lang/Object;
    :cond_1
    new-instance v4, Lcom/parse/ParseException;

    const/16 v5, 0x66

    const-string v6, "Key %s is invalid."

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 80
    :cond_2
    aget-object v4, v1, v7

    add-int/lit8 v5, p3, 0x1

    invoke-direct {p0, v3, v4, v5}, Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 83
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v5, p1, Lcom/parse/ParseObject;

    if-eqz v5, :cond_a

    move-object v0, p1

    .line 84
    check-cast v0, Lcom/parse/ParseObject;

    .line 87
    .local v0, "object":Lcom/parse/ParseObject;
    invoke-virtual {v0}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v4

    if-nez v4, :cond_4

    .line 88
    new-instance v4, Lcom/parse/ParseException;

    const-string v5, "Bad key: %s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object p2, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v9, v5}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 93
    :cond_4
    const-string v4, "objectId"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 94
    invoke-virtual {v0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 95
    :cond_5
    const-string v4, "createdAt"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "_created_at"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 96
    :cond_6
    invoke-virtual {v0}, Lcom/parse/ParseObject;->getCreatedAt()Ljava/util/Date;

    move-result-object v4

    goto :goto_1

    .line 97
    :cond_7
    const-string v4, "updatedAt"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "_updated_at"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 98
    :cond_8
    invoke-virtual {v0}, Lcom/parse/ParseObject;->getUpdatedAt()Ljava/util/Date;

    move-result-object v4

    goto :goto_1

    .line 100
    :cond_9
    invoke-virtual {v0, p2}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 103
    .end local v0    # "object":Lcom/parse/ParseObject;
    :cond_a
    instance-of v5, p1, Lorg/json/JSONObject;

    if-eqz v5, :cond_b

    .line 104
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "container":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 106
    .restart local p1    # "container":Ljava/lang/Object;
    :cond_b
    instance-of v5, p1, Ljava/util/Map;

    if-eqz v5, :cond_c

    .line 107
    check-cast p1, Ljava/util/Map;

    .end local p1    # "container":Ljava/lang/Object;
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1

    .line 109
    .restart local p1    # "container":Ljava/lang/Object;
    :cond_c
    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p1, v5, :cond_0

    .line 112
    if-eqz p1, :cond_0

    .line 116
    new-instance v4, Lcom/parse/ParseException;

    const-string v5, "Bad key: %s"

    new-array v6, v7, [Ljava/lang/Object;

    aput-object p2, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v9, v5}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 70
    .restart local v1    # "parts":[Ljava/lang/String;
    .restart local v2    # "restFormat":Ljava/lang/Object;
    .restart local v3    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method static hasReadAccess(Lcom/parse/ParseUser;Lcom/parse/ParseObject;)Z
    .locals 3
    .param p0, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseUser;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .local p1, "object":Lcom/parse/ParseObject;, "TT;"
    const/4 v1, 0x1

    .line 795
    if-ne p0, p1, :cond_1

    .line 810
    :cond_0
    :goto_0
    return v1

    .line 799
    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getACL()Lcom/parse/ParseACL;

    move-result-object v0

    .line 800
    .local v0, "acl":Lcom/parse/ParseACL;
    if-eqz v0, :cond_0

    .line 803
    invoke-virtual {v0}, Lcom/parse/ParseACL;->getPublicReadAccess()Z

    move-result v2

    if-nez v2, :cond_0

    .line 806
    if-eqz p0, :cond_2

    invoke-virtual {v0, p0}, Lcom/parse/ParseACL;->getReadAccess(Lcom/parse/ParseUser;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 810
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static hasWriteAccess(Lcom/parse/ParseUser;Lcom/parse/ParseObject;)Z
    .locals 3
    .param p0, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseUser;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .local p1, "object":Lcom/parse/ParseObject;, "TT;"
    const/4 v1, 0x1

    .line 817
    if-ne p0, p1, :cond_1

    .line 832
    :cond_0
    :goto_0
    return v1

    .line 821
    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getACL()Lcom/parse/ParseACL;

    move-result-object v0

    .line 822
    .local v0, "acl":Lcom/parse/ParseACL;
    if-eqz v0, :cond_0

    .line 825
    invoke-virtual {v0}, Lcom/parse/ParseACL;->getPublicWriteAccess()Z

    move-result v2

    if-nez v2, :cond_0

    .line 828
    if-eqz p0, :cond_2

    invoke-virtual {v0, p0}, Lcom/parse/ParseACL;->getWriteAccess(Lcom/parse/ParseUser;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 832
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static matchesAllConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 336
    if-eqz p1, :cond_0

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v3, :cond_1

    :cond_0
    move v3, v4

    .line 358
    .end local p0    # "constraint":Ljava/lang/Object;
    :goto_0
    return v3

    .line 340
    .restart local p0    # "constraint":Ljava/lang/Object;
    :cond_1
    instance-of v3, p1, Ljava/util/List;

    if-nez v3, :cond_2

    instance-of v3, p1, Lorg/json/JSONArray;

    if-nez v3, :cond_2

    .line 341
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Value type not supported for $all queries."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 343
    :cond_2
    instance-of v3, p0, Ljava/util/List;

    if-eqz v3, :cond_5

    .line 344
    check-cast p0, Ljava/util/List;

    .end local p0    # "constraint":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 345
    .local v2, "requiredItem":Ljava/lang/Object;
    invoke-static {v2, p1}, Lcom/parse/OfflineQueryLogic;->matchesEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v4

    .line 346
    goto :goto_0

    .end local v2    # "requiredItem":Ljava/lang/Object;
    :cond_4
    move v3, v5

    .line 349
    goto :goto_0

    .line 351
    .end local v1    # "i$":Ljava/util/Iterator;
    .restart local p0    # "constraint":Ljava/lang/Object;
    :cond_5
    instance-of v3, p0, Lorg/json/JSONArray;

    if-eqz v3, :cond_8

    .line 352
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    move-object v3, p0

    check-cast v3, Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_7

    move-object v3, p0

    .line 353
    check-cast v3, Lorg/json/JSONArray;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    .line 354
    .restart local v2    # "requiredItem":Ljava/lang/Object;
    invoke-static {v2, p1}, Lcom/parse/OfflineQueryLogic;->matchesEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v3, v4

    .line 355
    goto :goto_0

    .line 352
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2    # "requiredItem":Ljava/lang/Object;
    :cond_7
    move v3, v5

    .line 358
    goto :goto_0

    .line 360
    .end local v0    # "i":I
    :cond_8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Constraint type not supported for $all queries."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static matchesEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 205
    if-eqz p0, :cond_0

    if-nez p1, :cond_3

    .line 206
    :cond_0
    if-ne p0, p1, :cond_2

    .line 220
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v3

    .line 206
    goto :goto_0

    .line 209
    :cond_3
    instance-of v4, p0, Ljava/lang/Number;

    if-eqz v4, :cond_4

    instance-of v4, p1, Ljava/lang/Number;

    if-eqz v4, :cond_4

    .line 210
    invoke-static {p0, p1}, Lcom/parse/OfflineQueryLogic;->compareTo(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    goto :goto_0

    .line 213
    :cond_4
    instance-of v4, p0, Lcom/parse/ParseGeoPoint;

    if-eqz v4, :cond_6

    instance-of v4, p1, Lcom/parse/ParseGeoPoint;

    if-eqz v4, :cond_6

    move-object v0, p0

    .line 214
    check-cast v0, Lcom/parse/ParseGeoPoint;

    .local v0, "lhs":Lcom/parse/ParseGeoPoint;
    move-object v1, p1

    .line 215
    check-cast v1, Lcom/parse/ParseGeoPoint;

    .line 216
    .local v1, "rhs":Lcom/parse/ParseGeoPoint;
    invoke-virtual {v0}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_5

    invoke-virtual {v1}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    :cond_5
    move v2, v3

    goto :goto_0

    .line 220
    .end local v0    # "lhs":Lcom/parse/ParseGeoPoint;
    .end local v1    # "rhs":Lcom/parse/ParseGeoPoint;
    :cond_6
    new-instance v2, Lcom/parse/OfflineQueryLogic$1;

    invoke-direct {v2}, Lcom/parse/OfflineQueryLogic$1;-><init>()V

    invoke-static {p0, p1, v2}, Lcom/parse/OfflineQueryLogic;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/OfflineQueryLogic$Decider;)Z

    move-result v2

    goto :goto_0
.end method

.method private static matchesExistsConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 408
    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "constraint":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 409
    if-eqz p1, :cond_0

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p1, v2, :cond_0

    .line 411
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 409
    goto :goto_0

    .line 411
    :cond_1
    if-eqz p1, :cond_2

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v2, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static matchesGreaterThanConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 269
    new-instance v0, Lcom/parse/OfflineQueryLogic$4;

    invoke-direct {v0}, Lcom/parse/OfflineQueryLogic$4;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/parse/OfflineQueryLogic;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/OfflineQueryLogic$Decider;)Z

    move-result v0

    return v0
.end method

.method private static matchesGreaterThanOrEqualToConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 284
    new-instance v0, Lcom/parse/OfflineQueryLogic$5;

    invoke-direct {v0}, Lcom/parse/OfflineQueryLogic$5;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/parse/OfflineQueryLogic;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/OfflineQueryLogic$Decider;)Z

    move-result v0

    return v0
.end method

.method private static matchesInConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 300
    instance-of v3, p0, Ljava/util/List;

    if-eqz v3, :cond_2

    .line 301
    check-cast p0, Ljava/util/List;

    .end local p0    # "constraint":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 302
    .local v2, "requiredItem":Ljava/lang/Object;
    invoke-static {v2, p1}, Lcom/parse/OfflineQueryLogic;->matchesEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 320
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "requiredItem":Ljava/lang/Object;
    :goto_0
    return v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    move v3, v5

    .line 306
    goto :goto_0

    .line 308
    .end local v1    # "i$":Ljava/util/Iterator;
    .restart local p0    # "constraint":Ljava/lang/Object;
    :cond_2
    instance-of v3, p0, Lorg/json/JSONArray;

    if-eqz v3, :cond_5

    .line 309
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    move-object v3, p0

    check-cast v3, Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    move-object v3, p0

    .line 310
    check-cast v3, Lorg/json/JSONArray;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/parse/OfflineQueryLogic;->matchesEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    .line 311
    goto :goto_0

    .line 309
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v3, v5

    .line 314
    goto :goto_0

    .line 316
    .end local v0    # "i":I
    :cond_5
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p0, v3, :cond_6

    move v3, v5

    .line 317
    goto :goto_0

    .line 319
    :cond_6
    if-nez p0, :cond_7

    move v3, v5

    .line 320
    goto :goto_0

    .line 322
    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Constraint type not supported for $in queries."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static matchesLessThanConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 239
    new-instance v0, Lcom/parse/OfflineQueryLogic$2;

    invoke-direct {v0}, Lcom/parse/OfflineQueryLogic$2;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/parse/OfflineQueryLogic;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/OfflineQueryLogic$Decider;)Z

    move-result v0

    return v0
.end method

.method private static matchesLessThanOrEqualToConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 254
    new-instance v0, Lcom/parse/OfflineQueryLogic$3;

    invoke-direct {v0}, Lcom/parse/OfflineQueryLogic$3;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/parse/OfflineQueryLogic;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/OfflineQueryLogic$Decider;)Z

    move-result v0

    return v0
.end method

.method private static matchesNearSphereConstraint(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Double;)Z
    .locals 8
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "maxDistance"    # Ljava/lang/Double;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 420
    if-eqz p1, :cond_0

    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v4, :cond_2

    :cond_0
    move v2, v3

    .line 428
    :cond_1
    :goto_0
    return v2

    .line 423
    :cond_2
    if-eqz p2, :cond_1

    move-object v0, p0

    .line 426
    check-cast v0, Lcom/parse/ParseGeoPoint;

    .local v0, "point1":Lcom/parse/ParseGeoPoint;
    move-object v1, p1

    .line 427
    check-cast v1, Lcom/parse/ParseGeoPoint;

    .line 428
    .local v1, "point2":Lcom/parse/ParseGeoPoint;
    invoke-virtual {v0, v1}, Lcom/parse/ParseGeoPoint;->distanceInRadiansTo(Lcom/parse/ParseGeoPoint;)D

    move-result-wide v4

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-lez v4, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method private static matchesNotEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 232
    invoke-static {p0, p1}, Lcom/parse/OfflineQueryLogic;->matchesEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static matchesNotInConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 329
    invoke-static {p0, p1}, Lcom/parse/OfflineQueryLogic;->matchesInConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static matchesRegexConstraint(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 9
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "options"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 368
    if-eqz p1, :cond_0

    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v5, :cond_1

    .line 398
    .end local p1    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v4

    .line 372
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    if-nez p2, :cond_2

    .line 373
    const-string p2, ""

    .line 376
    :cond_2
    const-string v5, "^[imxs]*$"

    invoke-virtual {p2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 377
    new-instance v5, Lcom/parse/ParseException;

    const/16 v6, 0x66

    const-string v7, "Invalid regex options: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 381
    :cond_3
    const/4 v0, 0x0

    .line 382
    .local v0, "flags":I
    const-string v4, "i"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 383
    or-int/lit8 v0, v0, 0x2

    .line 385
    :cond_4
    const-string v4, "m"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 386
    or-int/lit8 v0, v0, 0x8

    .line 388
    :cond_5
    const-string v4, "x"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 389
    or-int/lit8 v0, v0, 0x4

    .line 391
    :cond_6
    const-string v4, "s"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 392
    or-int/lit8 v0, v0, 0x20

    :cond_7
    move-object v3, p0

    .line 395
    check-cast v3, Ljava/lang/String;

    .line 396
    .local v3, "regex":Ljava/lang/String;
    invoke-static {v3, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 397
    .local v2, "pattern":Ljava/util/regex/Pattern;
    check-cast p1, Ljava/lang/String;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 398
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    goto :goto_0
.end method

.method private static matchesStatelessConstraint(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/ParseQuery$KeyConstraints;)Z
    .locals 6
    .param p0, "operator"    # Ljava/lang/String;
    .param p1, "constraint"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "allKeyConstraints"    # Lcom/parse/ParseQuery$KeyConstraints;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 472
    const-string v3, "$ne"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 473
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesNotEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 516
    :cond_0
    :goto_0
    return v2

    .line 475
    :cond_1
    const-string v3, "$lt"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 476
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesLessThanConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 478
    :cond_2
    const-string v3, "$lte"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 479
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesLessThanOrEqualToConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 481
    :cond_3
    const-string v3, "$gt"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 482
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesGreaterThanConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 484
    :cond_4
    const-string v3, "$gte"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 485
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesGreaterThanOrEqualToConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 487
    :cond_5
    const-string v3, "$in"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 488
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesInConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 490
    :cond_6
    const-string v3, "$nin"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 491
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesNotInConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 493
    :cond_7
    const-string v3, "$all"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 494
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesAllConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 496
    :cond_8
    const-string v3, "$regex"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 497
    const-string v2, "$options"

    invoke-virtual {p3, v2}, Lcom/parse/ParseQuery$KeyConstraints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 498
    .local v1, "regexOptions":Ljava/lang/String;
    invoke-static {p1, p2, v1}, Lcom/parse/OfflineQueryLogic;->matchesRegexConstraint(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 500
    .end local v1    # "regexOptions":Ljava/lang/String;
    :cond_9
    const-string v3, "$options"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 504
    const-string v3, "$exists"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 505
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesExistsConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_0

    .line 507
    :cond_a
    const-string v3, "$nearSphere"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 508
    const-string v2, "$maxDistance"

    invoke-virtual {p3, v2}, Lcom/parse/ParseQuery$KeyConstraints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 509
    .local v0, "maxDistance":Ljava/lang/Double;
    invoke-static {p1, p2, v0}, Lcom/parse/OfflineQueryLogic;->matchesNearSphereConstraint(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Double;)Z

    move-result v2

    goto/16 :goto_0

    .line 511
    .end local v0    # "maxDistance":Ljava/lang/Double;
    :cond_b
    const-string v3, "$maxDistance"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 515
    const-string v3, "$within"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 516
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesWithinConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_0

    .line 519
    :cond_c
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "The offline store does not yet support the %s operator."

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v2, v5

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static matchesWithinConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 13
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v12, 0x66

    .line 437
    move-object v1, p0

    check-cast v1, Ljava/util/HashMap;

    .line 439
    .local v1, "constraintMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/parse/ParseGeoPoint;>;>;"
    const-string v7, "$box"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 440
    .local v0, "box":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parse/ParseGeoPoint;>;"
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseGeoPoint;

    .line 441
    .local v3, "southwest":Lcom/parse/ParseGeoPoint;
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseGeoPoint;

    .local v2, "northeast":Lcom/parse/ParseGeoPoint;
    move-object v4, p1

    .line 442
    check-cast v4, Lcom/parse/ParseGeoPoint;

    .line 444
    .local v4, "target":Lcom/parse/ParseGeoPoint;
    invoke-virtual {v2}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v3}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v10

    cmpg-double v7, v8, v10

    if-gez v7, :cond_0

    .line 445
    new-instance v5, Lcom/parse/ParseException;

    const-string v6, "whereWithinGeoBox queries cannot cross the International Date Line."

    invoke-direct {v5, v12, v6}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 448
    :cond_0
    invoke-virtual {v2}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v3}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v10

    cmpg-double v7, v8, v10

    if-gez v7, :cond_1

    .line 449
    new-instance v5, Lcom/parse/ParseException;

    const-string v6, "The southwest corner of a geo box must be south of the northeast corner."

    invoke-direct {v5, v12, v6}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 452
    :cond_1
    invoke-virtual {v2}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v3}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v10

    sub-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    cmpl-double v7, v8, v10

    if-lez v7, :cond_2

    .line 453
    new-instance v5, Lcom/parse/ParseException;

    const-string v6, "Geo box queries larger than 180 degrees in longitude are not supported. Please check point order."

    invoke-direct {v5, v12, v6}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 458
    :cond_2
    invoke-virtual {v4}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v3}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v10

    cmpl-double v7, v8, v10

    if-ltz v7, :cond_3

    invoke-virtual {v4}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v2}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v10

    cmpg-double v7, v8, v10

    if-gtz v7, :cond_3

    invoke-virtual {v4}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v3}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v10

    cmpl-double v7, v8, v10

    if-ltz v7, :cond_3

    invoke-virtual {v4}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v2}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v10

    cmpg-double v7, v8, v10

    if-gtz v7, :cond_3

    :goto_0
    return v5

    :cond_3
    move v5, v6

    goto :goto_0
.end method


# virtual methods
.method createMatcher(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    .locals 3
    .param p2, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            ")",
            "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 846
    .local p1, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iget-boolean v1, p1, Lcom/parse/ParseQuery;->ignoreACLs:Z

    .line 847
    .local v1, "ignoreACLs":Z
    invoke-virtual {p1}, Lcom/parse/ParseQuery;->getConstraints()Lcom/parse/ParseQuery$QueryConstraints;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/parse/OfflineQueryLogic;->createMatcher(Lcom/parse/ParseUser;Lcom/parse/ParseQuery$QueryConstraints;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v0

    .line 849
    .local v0, "constraintMatcher":Lcom/parse/OfflineQueryLogic$ConstraintMatcher;, "Lcom/parse/OfflineQueryLogic$ConstraintMatcher<TT;>;"
    new-instance v2, Lcom/parse/OfflineQueryLogic$15;

    invoke-direct {v2, p0, p2, v1, v0}, Lcom/parse/OfflineQueryLogic$15;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;ZLcom/parse/OfflineQueryLogic$ConstraintMatcher;)V

    return-object v2
.end method

.method fetchIncludes(Lcom/parse/ParseObject;Lcom/parse/ParseQuery;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 5
    .param p3, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(TT;",
            "Lcom/parse/ParseQuery",
            "<TT;>;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1052
    .local p1, "object":Lcom/parse/ParseObject;, "TT;"
    .local p2, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-virtual {p2}, Lcom/parse/ParseQuery;->getIncludes()Ljava/util/List;

    move-result-object v2

    .line 1054
    .local v2, "includes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-static {v4}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v3

    .line 1055
    .local v3, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1056
    .local v1, "include":Ljava/lang/String;
    new-instance v4, Lcom/parse/OfflineQueryLogic$21;

    invoke-direct {v4, p0, p1, v1, p3}, Lcom/parse/OfflineQueryLogic$21;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseObject;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v3, v4}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v3

    .line 1062
    goto :goto_0

    .line 1063
    .end local v1    # "include":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method sort(Ljava/util/List;Lcom/parse/ParseQuery;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/ParseQuery",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 865
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/parse/ParseQuery;->sortKeys()[Ljava/lang/String;

    move-result-object v5

    .line 867
    .local v5, "keys":[Ljava/lang/String;
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v6, :cond_1

    aget-object v3, v1, v2

    .line 868
    .local v3, "key":Ljava/lang/String;
    const-string v13, "^-?[A-Za-z][A-Za-z0-9_]*$"

    invoke-virtual {v3, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 869
    const-string v13, "_created_at"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "_updated_at"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 870
    new-instance v13, Lcom/parse/ParseException;

    const/16 v14, 0x69

    const-string v15, "Invalid key name: \"%s\"."

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v3, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v13

    .line 867
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 877
    .end local v3    # "key":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    .line 878
    .local v7, "mutableNearSphereKey":Ljava/lang/String;
    const/4 v8, 0x0

    .line 879
    .local v8, "mutableNearSphereValue":Lcom/parse/ParseGeoPoint;
    invoke-virtual/range {p2 .. p2}, Lcom/parse/ParseQuery;->getConstraints()Lcom/parse/ParseQuery$QueryConstraints;

    move-result-object v13

    invoke-virtual {v13}, Lcom/parse/ParseQuery$QueryConstraints;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 880
    .local v11, "queryKey":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/parse/ParseQuery;->getConstraints()Lcom/parse/ParseQuery$QueryConstraints;

    move-result-object v13

    invoke-virtual {v13, v11}, Lcom/parse/ParseQuery$QueryConstraints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 881
    .local v12, "queryKeyConstraints":Ljava/lang/Object;
    instance-of v13, v12, Lcom/parse/ParseQuery$KeyConstraints;

    if-eqz v13, :cond_2

    move-object v4, v12

    .line 882
    check-cast v4, Lcom/parse/ParseQuery$KeyConstraints;

    .line 883
    .local v4, "keyConstraints":Lcom/parse/ParseQuery$KeyConstraints;
    const-string v13, "$nearSphere"

    invoke-virtual {v4, v13}, Lcom/parse/ParseQuery$KeyConstraints;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 884
    move-object v7, v11

    .line 885
    const-string v13, "$nearSphere"

    invoke-virtual {v4, v13}, Lcom/parse/ParseQuery$KeyConstraints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "mutableNearSphereValue":Lcom/parse/ParseGeoPoint;
    check-cast v8, Lcom/parse/ParseGeoPoint;

    .restart local v8    # "mutableNearSphereValue":Lcom/parse/ParseGeoPoint;
    goto :goto_1

    .line 889
    .end local v4    # "keyConstraints":Lcom/parse/ParseQuery$KeyConstraints;
    .end local v11    # "queryKey":Ljava/lang/String;
    .end local v12    # "queryKeyConstraints":Ljava/lang/Object;
    :cond_3
    move-object v9, v7

    .line 890
    .local v9, "nearSphereKey":Ljava/lang/String;
    move-object v10, v8

    .line 893
    .local v10, "nearSphereValue":Lcom/parse/ParseGeoPoint;
    array-length v13, v5

    if-nez v13, :cond_4

    if-nez v7, :cond_4

    .line 951
    :goto_2
    return-void

    .line 901
    :cond_4
    new-instance v13, Lcom/parse/OfflineQueryLogic$16;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v9, v10, v5}, Lcom/parse/OfflineQueryLogic$16;-><init>(Lcom/parse/OfflineQueryLogic;Ljava/lang/String;Lcom/parse/ParseGeoPoint;[Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2
.end method
