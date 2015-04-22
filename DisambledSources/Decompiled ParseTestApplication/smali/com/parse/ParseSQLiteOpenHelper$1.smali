.class Lcom/parse/ParseSQLiteOpenHelper$1;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ParseSQLiteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseSQLiteOpenHelper;


# direct methods
.method constructor <init>(Lcom/parse/ParseSQLiteOpenHelper;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p5, "x3"    # I

    .prologue
    .line 15
    iput-object p1, p0, Lcom/parse/ParseSQLiteOpenHelper$1;->this$0:Lcom/parse/ParseSQLiteOpenHelper;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parse/ParseSQLiteOpenHelper$1;->this$0:Lcom/parse/ParseSQLiteOpenHelper;

    invoke-virtual {v0, p1}, Lcom/parse/ParseSQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 25
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 19
    iget-object v0, p0, Lcom/parse/ParseSQLiteOpenHelper$1;->this$0:Lcom/parse/ParseSQLiteOpenHelper;

    invoke-virtual {v0, p1}, Lcom/parse/ParseSQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 20
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lcom/parse/ParseSQLiteOpenHelper$1;->this$0:Lcom/parse/ParseSQLiteOpenHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parse/ParseSQLiteOpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 30
    return-void
.end method
