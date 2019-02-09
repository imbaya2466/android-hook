.class Lcom/example/cjh/hellojni/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/cjh/hellojni/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/cjh/hellojni/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/cjh/hellojni/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/example/cjh/hellojni/MainActivity;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/example/cjh/hellojni/MainActivity$1;->this$0:Lcom/example/cjh/hellojni/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/example/cjh/hellojni/MainActivity$1;->this$0:Lcom/example/cjh/hellojni/MainActivity;

    invoke-static {}, Lcom/example/cjh/hellojni/AppUtils;->getStringFromJni()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 30
    return-void
.end method
