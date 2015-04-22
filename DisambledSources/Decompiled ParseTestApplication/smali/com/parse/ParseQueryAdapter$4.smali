.class Lcom/parse/ParseQueryAdapter$4;
.super Ljava/lang/Object;
.source "ParseQueryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQueryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQueryAdapter;


# direct methods
.method constructor <init>(Lcom/parse/ParseQueryAdapter;)V
    .locals 0

    .prologue
    .line 538
    .local p0, "this":Lcom/parse/ParseQueryAdapter$4;, "Lcom/parse/ParseQueryAdapter.4;"
    iput-object p1, p0, Lcom/parse/ParseQueryAdapter$4;->this$0:Lcom/parse/ParseQueryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 541
    .local p0, "this":Lcom/parse/ParseQueryAdapter$4;, "Lcom/parse/ParseQueryAdapter.4;"
    iget-object v0, p0, Lcom/parse/ParseQueryAdapter$4;->this$0:Lcom/parse/ParseQueryAdapter;

    invoke-virtual {v0}, Lcom/parse/ParseQueryAdapter;->loadNextPage()V

    .line 542
    return-void
.end method
