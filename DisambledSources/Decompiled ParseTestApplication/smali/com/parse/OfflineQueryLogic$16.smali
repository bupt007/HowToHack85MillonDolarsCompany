.class Lcom/parse/OfflineQueryLogic$16;
.super Ljava/lang/Object;
.source "OfflineQueryLogic.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineQueryLogic;->sort(Ljava/util/List;Lcom/parse/ParseQuery;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineQueryLogic;

.field final synthetic val$keys:[Ljava/lang/String;

.field final synthetic val$nearSphereKey:Ljava/lang/String;

.field final synthetic val$nearSphereValue:Lcom/parse/ParseGeoPoint;


# direct methods
.method constructor <init>(Lcom/parse/OfflineQueryLogic;Ljava/lang/String;Lcom/parse/ParseGeoPoint;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 901
    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$16;->this$0:Lcom/parse/OfflineQueryLogic;

    iput-object p2, p0, Lcom/parse/OfflineQueryLogic$16;->val$nearSphereKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/OfflineQueryLogic$16;->val$nearSphereValue:Lcom/parse/ParseGeoPoint;

    iput-object p4, p0, Lcom/parse/OfflineQueryLogic$16;->val$keys:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/parse/ParseObject;Lcom/parse/ParseObject;)I
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 904
    .local p1, "lhs":Lcom/parse/ParseObject;, "TT;"
    .local p2, "rhs":Lcom/parse/ParseObject;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/OfflineQueryLogic$16;->val$nearSphereKey:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 908
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/OfflineQueryLogic$16;->this$0:Lcom/parse/OfflineQueryLogic;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/OfflineQueryLogic$16;->val$nearSphereKey:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    # invokes: Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v0, v1, v2}, Lcom/parse/OfflineQueryLogic;->access$200(Lcom/parse/OfflineQueryLogic;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/parse/ParseGeoPoint;

    .line 909
    .local v12, "lhsPoint":Lcom/parse/ParseGeoPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/OfflineQueryLogic$16;->this$0:Lcom/parse/OfflineQueryLogic;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/OfflineQueryLogic$16;->val$nearSphereKey:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    # invokes: Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v0, v1, v2}, Lcom/parse/OfflineQueryLogic;->access$200(Lcom/parse/OfflineQueryLogic;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/parse/ParseGeoPoint;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    .local v15, "rhsPoint":Lcom/parse/ParseGeoPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/OfflineQueryLogic$16;->val$nearSphereValue:Lcom/parse/ParseGeoPoint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/parse/ParseGeoPoint;->distanceInRadiansTo(Lcom/parse/ParseGeoPoint;)D

    move-result-wide v10

    .line 916
    .local v10, "lhsDistance":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/OfflineQueryLogic$16;->val$nearSphereValue:Lcom/parse/ParseGeoPoint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/parse/ParseGeoPoint;->distanceInRadiansTo(Lcom/parse/ParseGeoPoint;)D

    move-result-wide v16

    .line 917
    .local v16, "rhsDistance":D
    cmpl-double v19, v10, v16

    if-eqz v19, :cond_1

    .line 918
    sub-double v20, v10, v16

    const-wide/16 v22, 0x0

    cmpl-double v19, v20, v22

    if-lez v19, :cond_0

    const/16 v19, 0x1

    .line 948
    .end local v10    # "lhsDistance":D
    .end local v12    # "lhsPoint":Lcom/parse/ParseGeoPoint;
    .end local v15    # "rhsPoint":Lcom/parse/ParseGeoPoint;
    .end local v16    # "rhsDistance":D
    :goto_0
    return v19

    .line 910
    :catch_0
    move-exception v6

    .line 911
    .local v6, "e":Lcom/parse/ParseException;
    new-instance v19, Ljava/lang/RuntimeException;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v19

    .line 918
    .end local v6    # "e":Lcom/parse/ParseException;
    .restart local v10    # "lhsDistance":D
    .restart local v12    # "lhsPoint":Lcom/parse/ParseGeoPoint;
    .restart local v15    # "rhsPoint":Lcom/parse/ParseGeoPoint;
    .restart local v16    # "rhsDistance":D
    :cond_0
    const/16 v19, -0x1

    goto :goto_0

    .line 922
    .end local v10    # "lhsDistance":D
    .end local v12    # "lhsPoint":Lcom/parse/ParseGeoPoint;
    .end local v15    # "rhsPoint":Lcom/parse/ParseGeoPoint;
    .end local v16    # "rhsDistance":D
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parse/OfflineQueryLogic$16;->val$keys:[Ljava/lang/String;

    .local v4, "arr$":[Ljava/lang/String;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v9, :cond_5

    aget-object v8, v4, v7

    .line 923
    .local v8, "key":Ljava/lang/String;
    const/4 v5, 0x0

    .line 924
    .local v5, "descending":Z
    const-string v19, "-"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 925
    const/4 v5, 0x1

    .line 926
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 932
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/OfflineQueryLogic$16;->this$0:Lcom/parse/OfflineQueryLogic;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    # invokes: Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v0, v1, v8}, Lcom/parse/OfflineQueryLogic;->access$200(Lcom/parse/OfflineQueryLogic;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 933
    .local v13, "lhsValue":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/OfflineQueryLogic$16;->this$0:Lcom/parse/OfflineQueryLogic;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    # invokes: Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v0, v1, v8}, Lcom/parse/OfflineQueryLogic;->access$200(Lcom/parse/OfflineQueryLogic;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/parse/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    .line 940
    .local v18, "rhsValue":Ljava/lang/Object;
    :try_start_2
    move-object/from16 v0, v18

    # invokes: Lcom/parse/OfflineQueryLogic;->compareTo(Ljava/lang/Object;Ljava/lang/Object;)I
    invoke-static {v13, v0}, Lcom/parse/OfflineQueryLogic;->access$000(Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v14

    .line 944
    .local v14, "result":I
    if-eqz v14, :cond_4

    .line 945
    if-eqz v5, :cond_3

    neg-int v14, v14

    .end local v14    # "result":I
    :cond_3
    move/from16 v19, v14

    goto :goto_0

    .line 934
    .end local v13    # "lhsValue":Ljava/lang/Object;
    .end local v18    # "rhsValue":Ljava/lang/Object;
    :catch_1
    move-exception v6

    .line 935
    .restart local v6    # "e":Lcom/parse/ParseException;
    new-instance v19, Ljava/lang/RuntimeException;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v19

    .line 941
    .end local v6    # "e":Lcom/parse/ParseException;
    .restart local v13    # "lhsValue":Ljava/lang/Object;
    .restart local v18    # "rhsValue":Ljava/lang/Object;
    :catch_2
    move-exception v6

    .line 942
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "Unable to sort by key %s."

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v8, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 922
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v14    # "result":I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 948
    .end local v5    # "descending":Z
    .end local v8    # "key":Ljava/lang/String;
    .end local v13    # "lhsValue":Ljava/lang/Object;
    .end local v14    # "result":I
    .end local v18    # "rhsValue":Ljava/lang/Object;
    :cond_5
    const/16 v19, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 901
    check-cast p1, Lcom/parse/ParseObject;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/parse/ParseObject;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/parse/OfflineQueryLogic$16;->compare(Lcom/parse/ParseObject;Lcom/parse/ParseObject;)I

    move-result v0

    return v0
.end method
