����   2 � Gcom/alansystems/tipicogoldrush/view/activity/main/MainActivity$uiInit$1  android/webkit/WebChromeClient  >com/alansystems/tipicogoldrush/view/activity/main/MainActivity  uiInit ()V   onPermissionRequest %(Landroid/webkit/PermissionRequest;)V #Lorg/jetbrains/annotations/NotNull; request  kotlin/jvm/internal/Intrinsics  checkParameterIsNotNull '(Ljava/lang/Object;Ljava/lang/String;)V  
   this$0 @Lcom/alansystems/tipicogoldrush/view/activity/main/MainActivity;  	   ]com/alansystems/tipicogoldrush/view/activity/main/MainActivity$uiInit$1$onPermissionRequest$1  <init>  
   java/lang/Runnable  runOnUiThread (Ljava/lang/Runnable;)V   !
  " this ILcom/alansystems/tipicogoldrush/view/activity/main/MainActivity$uiInit$1; "Landroid/webkit/PermissionRequest; onShowFileChooser k(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z (Landroid/webkit/WebView;Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;Landroid/webkit/WebChromeClient$FileChooserParams;)Z $Lorg/jetbrains/annotations/Nullable; java/io/IOException + access$getMUMA$p `(Lcom/alansystems/tipicogoldrush/view/activity/main/MainActivity;)Landroid/webkit/ValueCallback; - .
  / android/webkit/ValueCallback 1 onReceiveValue (Ljava/lang/Object;)V 3 4 2 5 access$setMUMA$p a(Lcom/alansystems/tipicogoldrush/view/activity/main/MainActivity;Landroid/webkit/ValueCallback;)V 7 8
  9 android/content/Intent ; "android.media.action.IMAGE_CAPTURE = (Ljava/lang/String;)V  ?
 < @ getPackageManager %()Landroid/content/pm/PackageManager; B C
  D resolveActivity D(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName; F G
 < H java/io/File J access$createImageFile P(Lcom/alansystems/tipicogoldrush/view/activity/main/MainActivity;)Ljava/io/File; L M
  N 	PhotoPath P access$getMCM$p T(Lcom/alansystems/tipicogoldrush/view/activity/main/MainActivity;)Ljava/lang/String; R S
  T putExtra >(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent; V W
 < X   Z Image file creation failed \ java/lang/Throwable ^ android/util/Log ` e <(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I b c
 a d java/lang/StringBuilder f  
 g h file: j append -(Ljava/lang/String;)Ljava/lang/StringBuilder; l m
 g n getAbsolutePath ()Ljava/lang/String; p q
 K r toString t q
 g u access$setMCM$p U(Lcom/alansystems/tipicogoldrush/view/activity/main/MainActivity;Ljava/lang/String;)V w x
  y output { android/net/Uri } fromFile !(Ljava/io/File;)Landroid/net/Uri;  �
 ~ � android/os/Parcelable � C(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent; V �
 < � 4takePictureIntent.putExt…                        ) � checkExpressionValueIsNotNull � 
  � !android.intent.action.GET_CONTENT �  android.intent.category.OPENABLE � addCategory ,(Ljava/lang/String;)Landroid/content/Intent; � �
 < � */* � setType � �
 < � #android.intent.extra.ALLOW_MULTIPLE � -(Ljava/lang/String;Z)Landroid/content/Intent; V �
 < � android.intent.action.CHOOSER � android.intent.extra.INTENT � android.intent.extra.TITLE � File Chooser � $android.intent.extra.INITIAL_INTENTS � [Landroid/os/Parcelable; � D(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent; V �
 < � "access$getFILECHOOSER_RESULTCODE$p C(Lcom/alansystems/tipicogoldrush/view/activity/main/MainActivity;)I � �
  � startActivityForResult (Landroid/content/Intent;I)V � �
  � ex Ljava/io/IOException; 	photoFile Ljava/io/File; $this$apply Landroid/content/Intent; L$i$a$-apply-MainActivity$uiInit$1$onShowFileChooser$contentSelectionIntent$1 I C$i$a$-apply-MainActivity$uiInit$1$onShowFileChooser$chooserIntent$1 chooserIntent intentArray [Landroid/content/Intent; contentSelectionIntent takePictureIntent webView Landroid/webkit/WebView; filePathCallback Landroid/webkit/ValueCallback; fileChooserParams 2Landroid/webkit/WebChromeClient$FileChooserParams; android/webkit/WebView � 0android/webkit/WebChromeClient$FileChooserParams � � C(Lcom/alansystems/tipicogoldrush/view/activity/main/MainActivity;)V
  h $outer Lkotlin/Metadata; mv       bv        k d1 ���7
��

��

��

��

��

��



��

��*��
��20J020HJ2020	2

00020H¨ d2  Landroid/webkit/WebChromeClient; Landroid/net/Uri; 	app_debug MainActivity.kt Code LineNumberTable LocalVariableTable $RuntimeInvisibleParameterAnnotations StackMapTable 	Signature InnerClasses EnclosingMethod 
SourceFile SourceDebugExtension RuntimeVisibleAnnotations 1            
   �   Q     +� *� � Y+� � � #�    �   
   �  � �        $ %       &  �         ' (  �  �    T*� � 0� *� � 0Y� � 6 � W*� ,� :� <Y>� A:*� � E� I� v� K: *� � O:Q*� � U� YW� :[]� _� eW� :*� � gY� ik� o� s� o� v� z|� �� �� �Y�� �W� 	� <:� <Y�� A:66:	6
	�� �W	�� �W	�� �W :� � <YS� � <:� <Y�� A:6	6
:6�� �� �W��� YW�� �� �W :*� 