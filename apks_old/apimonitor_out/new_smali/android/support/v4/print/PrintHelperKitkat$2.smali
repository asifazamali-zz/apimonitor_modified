.class  Landroid/support/v4/print/PrintHelperKitkat$2;
.super Landroid/os/AsyncTask;
.source "PrintHelperKitkat.java"
.field final synthetic this$0:Landroid/support/v4/print/PrintHelperKitkat;
.field final synthetic val$attributes:Landroid/print/PrintAttributes;
.field final synthetic val$bitmap:Landroid/graphics/Bitmap;
.field final synthetic val$cancellationSignal:Landroid/os/CancellationSignal;
.field final synthetic val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
.field final synthetic val$fittingMode:I
.field final synthetic val$pdfAttributes:Landroid/print/PrintAttributes;
.field final synthetic val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;
.method constructor <init>(Landroid/support/v4/print/PrintHelperKitkat;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/graphics/Bitmap;Landroid/print/PrintAttributes;ILandroid/os/ParcelFileDescriptor;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
.registers 9
iput-object p1, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;
iput-object p2, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$cancellationSignal:Landroid/os/CancellationSignal;
iput-object p3, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$pdfAttributes:Landroid/print/PrintAttributes;
iput-object p4, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$bitmap:Landroid/graphics/Bitmap;
iput-object p5, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$attributes:Landroid/print/PrintAttributes;
iput p6, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$fittingMode:I
iput-object p7, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
iput-object p8, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
return-void
.end method
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Landroid/support/v4/print/PrintHelperKitkat$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;
move-result-object v0
return-object v0
.end method
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;
.registers 14
const/4 v7, 0x0
:try_start_1
iget-object v8, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$cancellationSignal:Landroid/os/CancellationSignal;
invoke-virtual {v8}, Landroid/os/CancellationSignal;->isCanceled()Z
move-result v8
if-eqz v8, :cond_a
:goto_9
:cond_9
return-object v7
:cond_a
new-instance v6, Landroid/print/pdf/PrintedPdfDocument;
iget-object v8, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;
iget-object v8, v8, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;
iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$pdfAttributes:Landroid/print/PrintAttributes;
invoke-direct {v6, v8, v9}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V
iget-object v8, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;
iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$bitmap:Landroid/graphics/Bitmap;
iget-object v10, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$pdfAttributes:Landroid/print/PrintAttributes;
invoke-virtual {v10}, Landroid/print/PrintAttributes;->getColorMode()I
move-result v10
#calls: Landroid/support/v4/print/PrintHelperKitkat;->convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
invoke-static {v8, v9, v10}, Landroid/support/v4/print/PrintHelperKitkat;->access$100(Landroid/support/v4/print/PrintHelperKitkat;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
move-result-object v4
iget-object v8, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$cancellationSignal:Landroid/os/CancellationSignal;
invoke-virtual {v8}, Landroid/os/CancellationSignal;->isCanceled()Z
:try_end_28
.catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_28} :catch_80
move-result v8
if-nez v8, :cond_9
const/4 v8, 0x1
:try_start_2c
invoke-virtual {v6, v8}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;
move-result-object v5
iget-object v8, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;
iget-boolean v8, v8, Landroid/support/v4/print/PrintHelperKitkat;->mIsMinMarginsHandlingCorrect:Z
if-eqz v8, :cond_82
new-instance v0, Landroid/graphics/RectF;
invoke-virtual {v5}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;
move-result-object v8
invoke-virtual {v8}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;
move-result-object v8
invoke-direct {v0, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V
:goto_43
iget-object v8, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;
invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I
move-result v9
invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I
move-result v10
iget v11, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$fittingMode:I
#calls: Landroid/support/v4/print/PrintHelperKitkat;->getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
invoke-static {v8, v9, v10, v0, v11}, Landroid/support/v4/print/PrintHelperKitkat;->access$200(Landroid/support/v4/print/PrintHelperKitkat;IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
move-result-object v3
iget-object v8, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;
iget-boolean v8, v8, Landroid/support/v4/print/PrintHelperKitkat;->mIsMinMarginsHandlingCorrect:Z
if-eqz v8, :cond_bb
:goto_59
invoke-virtual {v5}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;
move-result-object v8
const/4 v9, 0x0
invoke-virtual {v8, v4, v3, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
invoke-virtual {v6, v5}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V
iget-object v8, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$cancellationSignal:Landroid/os/CancellationSignal;
invoke-virtual {v8}, Landroid/os/CancellationSignal;->isCanceled()Z
:try_end_69
.catchall {:try_start_2c .. :try_end_69} :catchall_a6
move-result v8
if-eqz v8, :cond_ca
:try_start_6c
invoke-virtual {v6}, Landroid/print/pdf/PrintedPdfDocument;->close()V
iget-object v8, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
:try_end_71
.catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_71} :catch_80
if-eqz v8, :cond_78
:try_start_73
iget-object v8, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
:try_start_78
:cond_78
:goto_78
:try_end_78
.catch Ljava/io/IOException; {:try_start_73 .. :try_end_78} :catch_f1
.catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_78} :catch_80
iget-object v8, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$bitmap:Landroid/graphics/Bitmap;
if-eq v4, v8, :cond_9
invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V
:try_end_7f
.catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_7f} :catch_80
goto :goto_9
:catch_80
move-exception v7
goto :goto_9
:try_start_82
:cond_82
new-instance v1, Landroid/print/pdf/PrintedPdfDocument;
iget-object v8, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;
iget-object v8, v8, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;
iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$attributes:Landroid/print/PrintAttributes;
invoke-direct {v1, v8, v9}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V
const/4 v8, 0x1
invoke-virtual {v1, v8}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;
move-result-object v2
new-instance v0, Landroid/graphics/RectF;
invoke-virtual {v2}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;
move-result-object v8
invoke-virtual {v8}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;
move-result-object v8
invoke-direct {v0, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V
invoke-virtual {v1, v2}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V
invoke-virtual {v1}, Landroid/print/pdf/PrintedPdfDocument;->close()V
:try_end_a5
.catchall {:try_start_82 .. :try_end_a5} :catchall_a6
goto :goto_43
:catchall_a6
move-exception v8
:try_start_a7
invoke-virtual {v6}, Landroid/print/pdf/PrintedPdfDocument;->close()V
iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
:try_end_ac
.catch Ljava/lang/Throwable; {:try_start_a7 .. :try_end_ac} :catch_80
if-eqz v9, :cond_b3
:try_start_ae
iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
:try_end_b3
.catch Ljava/io/IOException; {:try_start_ae .. :try_end_b3} :catch_ed
.catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_b3} :catch_80
:goto_b3
:try_start_b3
:cond_b3
iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$bitmap:Landroid/graphics/Bitmap;
if-eq v4, v9, :cond_ba
invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V
:cond_ba
throw v8
:try_end_bb
.catch Ljava/lang/Throwable; {:try_start_b3 .. :try_end_bb} :catch_80
:try_start_bb
:cond_bb
iget v8, v0, Landroid/graphics/RectF;->left:F
iget v9, v0, Landroid/graphics/RectF;->top:F
invoke-virtual {v3, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z
invoke-virtual {v5}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;
move-result-object v8
invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z
goto :goto_59
:cond_ca
new-instance v8, Ljava/io/FileOutputStream;
iget-object v9, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
move-result-object v9
invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
invoke-virtual {v6, v8}, Landroid/print/pdf/PrintedPdfDocument;->writeTo(Ljava/io/OutputStream;)V
:try_end_d8
.catchall {:try_start_bb .. :try_end_d8} :catchall_a6
:try_start_d8
invoke-virtual {v6}, Landroid/print/pdf/PrintedPdfDocument;->close()V
iget-object v8, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
:try_end_dd
.catch Ljava/lang/Throwable; {:try_start_d8 .. :try_end_dd} :catch_80
if-eqz v8, :cond_e4
:try_start_df
iget-object v8, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
:try_end_e4
.catch Ljava/io/IOException; {:try_start_df .. :try_end_e4} :catch_ef
.catch Ljava/lang/Throwable; {:try_start_df .. :try_end_e4} :catch_80
:cond_e4
:goto_e4
:try_start_e4
iget-object v8, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$bitmap:Landroid/graphics/Bitmap;
if-eq v4, v8, :cond_9
invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V
:try_end_eb
.catch Ljava/lang/Throwable; {:try_start_e4 .. :try_end_eb} :catch_80
goto/16 :goto_9
:catch_ed
move-exception v9
goto :goto_b3
:catch_ef
move-exception v8
goto :goto_e4
:catch_f1
move-exception v8
goto :goto_78
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Throwable;
invoke-virtual {p0, p1}, Landroid/support/v4/print/PrintHelperKitkat$2;->onPostExecute(Ljava/lang/Throwable;)V
return-void
.end method
.method protected onPostExecute(Ljava/lang/Throwable;)V
.registers 6
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$cancellationSignal:Landroid/os/CancellationSignal;
invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z
move-result v0
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;
invoke-virtual {v0}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteCancelled()V
:goto_d
return-void
:cond_e
if-nez p1, :cond_1e
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;
const/4 v1, 0x1
new-array v1, v1, [Landroid/print/PageRange;
const/4 v2, 0x0
sget-object v3, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;
aput-object v3, v1, v2
invoke-virtual {v0, v1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V
goto :goto_d
:cond_1e
const-string v0, "PrintHelperKitkat"
const-string v1, "Error writing printed content"
invoke-static {v0, v1, p1}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V
goto :goto_d
.end method