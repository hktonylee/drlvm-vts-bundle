;    Copyright 2005-2006 The Apache Software Foundation or its licensors, as applicable
;
;    Licensed under the Apache License, Version 2.0 (the "License");
;    you may not use this file except in compliance with the License.
;    You may obtain a copy of the License at
;
;       http://www.apache.org/licenses/LICENSE-2.0
;
;    Unless required by applicable law or agreed to in writing, software
;    distributed under the License is distributed on an "AS IS" BASIS,
;    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
;
;    See the License for the specific language governing permissions and
;    limitations under the License.


;
; Author: Ilia A. Leviev
; Version: $Revision: 1.2 $
;

.class public org/apache/harmony/vts/test/vm/jvms/instructions/arithm/iinc/iinc07/iinc0701/iinc0701p
.super java/lang/Object
.field static T Ljava/lang/Throwable; 

; standard initializer
.method public <init>()V
   aload_0
   invokespecial java/lang/Object/<init>()V
   return
.end method
 
;test method

.method public test([Ljava/lang/String;)I
   .limit stack 2
   .limit locals 2


   

 sipush 768	
 istore 1
 
 wide
 iinc 1 -32768	
 
 iload 1
 ldc -32000
 if_icmpeq L1  
  
 sipush 105
  ireturn

L1:	

sipush 104
  ireturn

.end method


;
; standard main function
.method public static main([Ljava/lang/String;)V
  .limit stack 2
  .limit locals 1

  new org/apache/harmony/vts/test/vm/jvms/instructions/arithm/iinc/iinc07/iinc0701/iinc0701p
  dup
  invokespecial org/apache/harmony/vts/test/vm/jvms/instructions/arithm/iinc/iinc07/iinc0701/iinc0701p/<init>()V
  aload_0
 invokevirtual org/apache/harmony/vts/test/vm/jvms/instructions/arithm/iinc/iinc07/iinc0701/iinc0701p/test([Ljava/lang/String;)I

  invokestatic java/lang/System/exit(I)V

  return
.end method









