.class public Lcom/parse/ParseQueryAdapter;
.super Landroid/widget/BaseAdapter;
.source "ParseQueryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseQueryAdapter$OnQueryLoadListener;,
        Lcom/parse/ParseQueryAdapter$QueryFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parse/ParseObject;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_ITEM:I = 0x0

.field private static final VIEW_TYPE_NEXT_PAGE:I = 0x1


# instance fields
.field private autoload:Z

.field private context:Landroid/content/Context;

.field private currentPage:I

.field private dataSetObservers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/database/DataSetObserver;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private hasNextPage:Z

.field private imageKey:Ljava/lang/String;

.field private imageViewSet:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/parse/ParseImageView;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private itemResourceId:Ljava/lang/Integer;

.field private objectPages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private objects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private objectsPerPage:I

.field private onQueryLoadListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseQueryAdapter$OnQueryLoadListener",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private paginationEnabled:Z

.field private placeholder:Landroid/graphics/drawable/Drawable;

.field private queryFactory:Lcom/parse/ParseQueryAdapter$QueryFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseQueryAdapter$QueryFactory",
            "<TT;>;"
        }
    .end annotation
.end field

.field private textKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parse/ParseQueryAdapter$QueryFactory;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/parse/ParseQueryAdapter$QueryFactory",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    .local p2, "queryFactory":Lcom/parse/ParseQueryAdapter$QueryFactory;, "Lcom/parse/ParseQueryAdapter$QueryFactory<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parse/ParseQueryAdapter;-><init>(Landroid/content/Context;Lcom/parse/ParseQueryAdapter$QueryFactory;Ljava/lang/Integer;)V

    .line 233
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/parse/ParseQueryAdapter$QueryFactory;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "itemViewResource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/parse/ParseQueryAdapter$QueryFactory",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    .local p2, "queryFactory":Lcom/parse/ParseQueryAdapter$QueryFactory;, "Lcom/parse/ParseQueryAdapter$QueryFactory<TT;>;"
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/parse/ParseQueryAdapter;-><init>(Landroid/content/Context;Lcom/parse/ParseQueryAdapter$QueryFactory;Ljava/lang/Integer;)V

    .line 248
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/parse/ParseQueryAdapter$QueryFactory;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "itemViewResource"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/parse/ParseQueryAdapter$QueryFactory",
            "<TT;>;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    .local p2, "queryFactory":Lcom/parse/ParseQueryAdapter$QueryFactory;, "Lcom/parse/ParseQueryAdapter$QueryFactory<TT;>;"
    const/4 v1, 0x1

    .line 251
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 99
    const/16 v0, 0x19

    iput v0, p0, Lcom/parse/ParseQueryAdapter;->objectsPerPage:I

    .line 103
    iput-boolean v1, p0, Lcom/parse/ParseQueryAdapter;->paginationEnabled:Z

    .line 111
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQueryAdapter;->imageViewSet:Ljava/util/WeakHashMap;

    .line 114
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQueryAdapter;->dataSetObservers:Ljava/util/WeakHashMap;

    .line 118
    iput-boolean v1, p0, Lcom/parse/ParseQueryAdapter;->autoload:Z

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQueryAdapter;->objects:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQueryAdapter;->objectPages:Ljava/util/List;

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/parse/ParseQueryAdapter;->currentPage:I

    .line 132
    iput-boolean v1, p0, Lcom/parse/ParseQueryAdapter;->hasNextPage:Z

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQueryAdapter;->onQueryLoadListeners:Ljava/util/List;

    .line 252
    iput-object p1, p0, Lcom/parse/ParseQueryAdapter;->context:Landroid/content/Context;

    .line 253
    iput-object p2, p0, Lcom/parse/ParseQueryAdapter;->queryFactory:Lcom/parse/ParseQueryAdapter$QueryFactory;

    .line 254
    iput-object p3, p0, Lcom/parse/ParseQueryAdapter;->itemResourceId:Ljava/lang/Integer;

    .line 255
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parse/ParseObject;>;"
    invoke-static {p2}, Lcom/parse/ParseObject;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/parse/ParseQueryAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "itemViewResource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parse/ParseObject;>;"
    invoke-static {p2}, Lcom/parse/ParseObject;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/parse/ParseQueryAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 165
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    new-instance v0, Lcom/parse/ParseQueryAdapter$1;

    invoke-direct {v0, p2}, Lcom/parse/ParseQueryAdapter$1;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/parse/ParseQueryAdapter;-><init>(Landroid/content/Context;Lcom/parse/ParseQueryAdapter$QueryFactory;)V

    .line 175
    if-nez p2, :cond_0

    .line 176
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You need to specify a className for the ParseQueryAdapter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "itemViewResource"    # I

    .prologue
    .line 208
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    new-instance v0, Lcom/parse/ParseQueryAdapter$2;

    invoke-direct {v0, p2}, Lcom/parse/ParseQueryAdapter$2;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/parse/ParseQueryAdapter;-><init>(Landroid/content/Context;Lcom/parse/ParseQueryAdapter$QueryFactory;I)V

    .line 218
    if-nez p2, :cond_0

    .line 219
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You need to specify a className for the ParseQueryAdapter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/parse/ParseQueryAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseQueryAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/parse/ParseQueryAdapter;->hasNextPage:Z

    return p1
.end method

.method static synthetic access$100(Lcom/parse/ParseQueryAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQueryAdapter;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->objectPages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/ParseQueryAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQueryAdapter;

    .prologue
    .line 73
    iget v0, p0, Lcom/parse/ParseQueryAdapter;->currentPage:I

    return v0
.end method

.method static synthetic access$202(Lcom/parse/ParseQueryAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseQueryAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/parse/ParseQueryAdapter;->currentPage:I

    return p1
.end method

.method static synthetic access$300(Lcom/parse/ParseQueryAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQueryAdapter;

    .prologue
    .line 73
    iget v0, p0, Lcom/parse/ParseQueryAdapter;->objectsPerPage:I

    return v0
.end method

.method static synthetic access$400(Lcom/parse/ParseQueryAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQueryAdapter;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/parse/ParseQueryAdapter;->paginationEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/parse/ParseQueryAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseQueryAdapter;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/parse/ParseQueryAdapter;->syncObjectsWithPages()V

    return-void
.end method

.method static synthetic access$600(Lcom/parse/ParseQueryAdapter;Ljava/util/List;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseQueryAdapter;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/Exception;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseQueryAdapter;->notifyOnLoadedListeners(Ljava/util/List;Ljava/lang/Exception;)V

    return-void
.end method

.method private getDefaultView(Landroid/content/Context;)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    const/16 v5, 0x32

    const/4 v4, 0x4

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 646
    iget-object v3, p0, Lcom/parse/ParseQueryAdapter;->itemResourceId:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 647
    iget-object v3, p0, Lcom/parse/ParseQueryAdapter;->itemResourceId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 664
    :goto_0
    return-object v2

    .line 649
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 650
    .local v2, "view":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v7, v4, v7, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 652
    new-instance v0, Lcom/parse/ParseImageView;

    invoke-direct {v0, p1}, Lcom/parse/ParseImageView;-><init>(Landroid/content/Context;)V

    .line 653
    .local v0, "imageView":Lcom/parse/ParseImageView;
    const v3, 0x1020006

    invoke-virtual {v0, v3}, Lcom/parse/ParseImageView;->setId(I)V

    .line 654
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/parse/ParseImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 655
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 657
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 658
    .local v1, "textView":Landroid/widget/TextView;
    const v3, 0x1020014

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setId(I)V

    .line 659
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 661
    invoke-virtual {v1, v7, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 662
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private getPaginationCellRow()I
    .locals 1

    .prologue
    .line 668
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private loadObjects(IZ)V
    .locals 6
    .param p1, "page"    # I
    .param p2, "shouldClear"    # Z

    .prologue
    .line 331
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->queryFactory:Lcom/parse/ParseQueryAdapter$QueryFactory;

    invoke-interface {v0}, Lcom/parse/ParseQueryAdapter$QueryFactory;->create()Lcom/parse/ParseQuery;

    move-result-object v2

    .line 333
    .local v2, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iget v0, p0, Lcom/parse/ParseQueryAdapter;->objectsPerPage:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/parse/ParseQueryAdapter;->paginationEnabled:Z

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p0, p1, v2}, Lcom/parse/ParseQueryAdapter;->setPageOnQuery(ILcom/parse/ParseQuery;)V

    .line 337
    :cond_0
    invoke-direct {p0}, Lcom/parse/ParseQueryAdapter;->notifyOnLoadingListeners()V

    .line 340
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->objectPages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->objectPages:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 345
    :cond_1
    new-instance v4, Lbolts/Capture;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v4, v0}, Lbolts/Capture;-><init>(Ljava/lang/Object;)V

    .line 347
    .local v4, "firstCallBack":Lbolts/Capture;, "Lbolts/Capture<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/parse/ParseQueryAdapter$3;

    move-object v1, p0

    move v3, p2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseQueryAdapter$3;-><init>(Lcom/parse/ParseQueryAdapter;Lcom/parse/ParseQuery;ZLbolts/Capture;I)V

    invoke-virtual {v2, v0}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V

    .line 395
    return-void
.end method

.method private notifyOnLoadedListeners(Ljava/util/List;Ljava/lang/Exception;)V
    .locals 3
    .param p2, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 682
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v2, p0, Lcom/parse/ParseQueryAdapter;->onQueryLoadListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseQueryAdapter$OnQueryLoadListener;

    .line 683
    .local v1, "listener":Lcom/parse/ParseQueryAdapter$OnQueryLoadListener;, "Lcom/parse/ParseQueryAdapter$OnQueryLoadListener<TT;>;"
    invoke-interface {v1, p1, p2}, Lcom/parse/ParseQueryAdapter$OnQueryLoadListener;->onLoaded(Ljava/util/List;Ljava/lang/Exception;)V

    goto :goto_0

    .line 685
    .end local v1    # "listener":Lcom/parse/ParseQueryAdapter$OnQueryLoadListener;, "Lcom/parse/ParseQueryAdapter$OnQueryLoadListener<TT;>;"
    :cond_0
    return-void
.end method

.method private notifyOnLoadingListeners()V
    .locals 3

    .prologue
    .line 676
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    iget-object v2, p0, Lcom/parse/ParseQueryAdapter;->onQueryLoadListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseQueryAdapter$OnQueryLoadListener;

    .line 677
    .local v1, "listener":Lcom/parse/ParseQueryAdapter$OnQueryLoadListener;, "Lcom/parse/ParseQueryAdapter$OnQueryLoadListener<TT;>;"
    invoke-interface {v1}, Lcom/parse/ParseQueryAdapter$OnQueryLoadListener;->onLoading()V

    goto :goto_0

    .line 679
    .end local v1    # "listener":Lcom/parse/ParseQueryAdapter$OnQueryLoadListener;, "Lcom/parse/ParseQueryAdapter$OnQueryLoadListener<TT;>;"
    :cond_0
    return-void
.end method

.method private shouldShowPaginationCell()Z
    .locals 1

    .prologue
    .line 672
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/parse/ParseQueryAdapter;->paginationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/parse/ParseQueryAdapter;->hasNextPage:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private syncObjectsWithPages()V
    .locals 3

    .prologue
    .line 402
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    iget-object v2, p0, Lcom/parse/ParseQueryAdapter;->objects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 403
    iget-object v2, p0, Lcom/parse/ParseQueryAdapter;->objectPages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 404
    .local v1, "pageOfObjects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v2, p0, Lcom/parse/ParseQueryAdapter;->objects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 406
    .end local v1    # "pageOfObjects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnQueryLoadListener(Lcom/parse/ParseQueryAdapter$OnQueryLoadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQueryAdapter$OnQueryLoadListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 638
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    .local p1, "listener":Lcom/parse/ParseQueryAdapter$OnQueryLoadListener;, "Lcom/parse/ParseQueryAdapter$OnQueryLoadListener<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->onQueryLoadListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 313
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->objectPages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 314
    invoke-direct {p0}, Lcom/parse/ParseQueryAdapter;->syncObjectsWithPages()V

    .line 315
    invoke-virtual {p0}, Lcom/parse/ParseQueryAdapter;->notifyDataSetChanged()V

    .line 316
    const/4 v0, 0x0

    iput v0, p0, Lcom/parse/ParseQueryAdapter;->currentPage:I

    .line 317
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 263
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 425
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    iget-object v1, p0, Lcom/parse/ParseQueryAdapter;->objects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 427
    .local v0, "count":I
    invoke-direct {p0}, Lcom/parse/ParseQueryAdapter;->shouldShowPaginationCell()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    add-int/lit8 v0, v0, 0x1

    .line 431
    :cond_0
    return v0
.end method

.method public getItem(I)Lcom/parse/ParseObject;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQueryAdapter;->getPaginationCellRow()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 270
    const/4 v0, 0x0

    .line 272
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->objects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 73
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseQueryAdapter;->getItem(I)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 278
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemView(Lcom/parse/ParseObject;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    .local p1, "object":Lcom/parse/ParseObject;, "TT;"
    const/4 v4, 0x0

    .line 459
    if-nez p2, :cond_0

    .line 460
    iget-object v3, p0, Lcom/parse/ParseQueryAdapter;->context:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/parse/ParseQueryAdapter;->getDefaultView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    .line 465
    :cond_0
    const v3, 0x1020014

    :try_start_0
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    .local v2, "textView":Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 472
    iget-object v3, p0, Lcom/parse/ParseQueryAdapter;->textKey:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 473
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/parse/ParseQueryAdapter;->imageKey:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 484
    const v3, 0x1020006

    :try_start_1
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseImageView;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 490
    .local v1, "imageView":Lcom/parse/ParseImageView;
    if-nez v1, :cond_4

    .line 491
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Your object views must have a ParseImageView whose id attribute is \'android.R.id.icon\' if an imageKey is specified"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 466
    .end local v1    # "imageView":Lcom/parse/ParseImageView;
    .end local v2    # "textView":Landroid/widget/TextView;
    :catch_0
    move-exception v0

    .line 467
    .local v0, "ex":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Your object views must have a TextView whose id attribute is \'android.R.id.text1\'"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 474
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "textView":Landroid/widget/TextView;
    :cond_2
    iget-object v3, p0, Lcom/parse/ParseQueryAdapter;->textKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 475
    iget-object v3, p0, Lcom/parse/ParseQueryAdapter;->textKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 477
    :cond_3
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 485
    :catch_1
    move-exception v0

    .line 486
    .restart local v0    # "ex":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Your object views must have a ParseImageView whose id attribute is \'android.R.id.icon\'"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 494
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .restart local v1    # "imageView":Lcom/parse/ParseImageView;
    :cond_4
    iget-object v3, p0, Lcom/parse/ParseQueryAdapter;->imageViewSet:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 495
    iget-object v3, p0, Lcom/parse/ParseQueryAdapter;->imageViewSet:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    :cond_5
    iget-object v3, p0, Lcom/parse/ParseQueryAdapter;->placeholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Lcom/parse/ParseImageView;->setPlaceholder(Landroid/graphics/drawable/Drawable;)V

    .line 498
    iget-object v3, p0, Lcom/parse/ParseQueryAdapter;->imageKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseFile;

    invoke-virtual {v1, v3}, Lcom/parse/ParseImageView;->setParseFile(Lcom/parse/ParseFile;)V

    .line 499
    invoke-virtual {v1}, Lcom/parse/ParseImageView;->loadInBackground()Lbolts/Task;

    .line 502
    .end local v1    # "imageView":Lcom/parse/ParseImageView;
    :cond_6
    return-object p2
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 283
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQueryAdapter;->getPaginationCellRow()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 284
    const/4 v0, 0x1

    .line 286
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNextPageView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 519
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    if-nez p1, :cond_0

    .line 520
    iget-object v1, p0, Lcom/parse/ParseQueryAdapter;->context:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/parse/ParseQueryAdapter;->getDefaultView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    .line 522
    :cond_0
    const v1, 0x1020014

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 523
    .local v0, "textView":Landroid/widget/TextView;
    const-string v1, "Load more..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    return-object p1
.end method

.method public getObjectsPerPage()I
    .locals 1

    .prologue
    .line 580
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    iget v0, p0, Lcom/parse/ParseQueryAdapter;->objectsPerPage:I

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 536
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseQueryAdapter;->getItemViewType(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 537
    invoke-virtual {p0, p2, p3}, Lcom/parse/ParseQueryAdapter;->getNextPageView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 538
    .local v0, "nextPageView":Landroid/view/View;
    new-instance v1, Lcom/parse/ParseQueryAdapter$4;

    invoke-direct {v1, p0}, Lcom/parse/ParseQueryAdapter$4;-><init>(Lcom/parse/ParseQueryAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    .end local v0    # "nextPageView":Landroid/view/View;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/parse/ParseQueryAdapter;->getItem(I)Lcom/parse/ParseObject;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/parse/ParseQueryAdapter;->getItemView(Lcom/parse/ParseObject;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 291
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    const/4 v0, 0x2

    return v0
.end method

.method public loadNextPage()V
    .locals 2

    .prologue
    .line 413
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    iget v0, p0, Lcom/parse/ParseQueryAdapter;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/parse/ParseQueryAdapter;->loadObjects(IZ)V

    .line 414
    return-void
.end method

.method public loadObjects()V
    .locals 2

    .prologue
    .line 327
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/parse/ParseQueryAdapter;->loadObjects(IZ)V

    .line 328
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 296
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 297
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->dataSetObservers:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-boolean v0, p0, Lcom/parse/ParseQueryAdapter;->autoload:Z

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/parse/ParseQueryAdapter;->loadObjects()V

    .line 301
    :cond_0
    return-void
.end method

.method public removeOnQueryLoadListener(Lcom/parse/ParseQueryAdapter$OnQueryLoadListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQueryAdapter$OnQueryLoadListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 642
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    .local p1, "listener":Lcom/parse/ParseQueryAdapter$OnQueryLoadListener;, "Lcom/parse/ParseQueryAdapter$OnQueryLoadListener<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->onQueryLoadListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 643
    return-void
.end method

.method public setAutoload(Z)V
    .locals 1
    .param p1, "autoload"    # Z

    .prologue
    .line 626
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/parse/ParseQueryAdapter;->autoload:Z

    if-ne v0, p1, :cond_1

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    iput-boolean p1, p0, Lcom/parse/ParseQueryAdapter;->autoload:Z

    .line 632
    iget-boolean v0, p0, Lcom/parse/ParseQueryAdapter;->autoload:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->dataSetObservers:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    invoke-virtual {p0}, Lcom/parse/ParseQueryAdapter;->loadObjects()V

    goto :goto_0
.end method

.method public setImageKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageKey"    # Ljava/lang/String;

    .prologue
    .line 572
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    iput-object p1, p0, Lcom/parse/ParseQueryAdapter;->imageKey:Ljava/lang/String;

    .line 573
    return-void
.end method

.method public setObjectsPerPage(I)V
    .locals 0
    .param p1, "objectsPerPage"    # I

    .prologue
    .line 576
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    iput p1, p0, Lcom/parse/ParseQueryAdapter;->objectsPerPage:I

    .line 577
    return-void
.end method

.method protected setPageOnQuery(ILcom/parse/ParseQuery;)V
    .locals 1
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/parse/ParseQuery",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 563
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    .local p2, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iget v0, p0, Lcom/parse/ParseQueryAdapter;->objectsPerPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lcom/parse/ParseQuery;->setLimit(I)Lcom/parse/ParseQuery;

    .line 564
    iget v0, p0, Lcom/parse/ParseQueryAdapter;->objectsPerPage:I

    mul-int/2addr v0, p1

    invoke-virtual {p2, v0}, Lcom/parse/ParseQuery;->setSkip(I)Lcom/parse/ParseQuery;

    .line 565
    return-void
.end method

.method public setPaginationEnabled(Z)V
    .locals 0
    .param p1, "paginationEnabled"    # Z

    .prologue
    .line 590
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    iput-boolean p1, p0, Lcom/parse/ParseQueryAdapter;->paginationEnabled:Z

    .line 591
    return-void
.end method

.method public setPlaceholder(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 604
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    iget-object v2, p0, Lcom/parse/ParseQueryAdapter;->placeholder:Landroid/graphics/drawable/Drawable;

    if-ne v2, p1, :cond_1

    .line 616
    :cond_0
    return-void

    .line 607
    :cond_1
    iput-object p1, p0, Lcom/parse/ParseQueryAdapter;->placeholder:Landroid/graphics/drawable/Drawable;

    .line 608
    iget-object v2, p0, Lcom/parse/ParseQueryAdapter;->imageViewSet:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 610
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/parse/ParseImageView;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 611
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseImageView;

    .line 612
    .local v0, "imageView":Lcom/parse/ParseImageView;
    if-eqz v0, :cond_2

    .line 613
    iget-object v2, p0, Lcom/parse/ParseQueryAdapter;->placeholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Lcom/parse/ParseImageView;->setPlaceholder(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setTextKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "textKey"    # Ljava/lang/String;

    .prologue
    .line 568
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    iput-object p1, p0, Lcom/parse/ParseQueryAdapter;->textKey:Ljava/lang/String;

    .line 569
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 305
    .local p0, "this":Lcom/parse/ParseQueryAdapter;, "Lcom/parse/ParseQueryAdapter<TT;>;"
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 306
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter;->dataSetObservers:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    return-void
.end method
