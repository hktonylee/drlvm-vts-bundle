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
; Author: Alexander D. Shipilov
; Version: $Revision: 1.3 $
;

.class public org/apache/harmony/vts/test/vm/jvms/instructions/stack/dup2_x2/dup2_x201/dup2_x20101/dup2_x20101p
.super java/lang/Object

;
; standard initializer
.method public <init>()V
   aload_0
   invokespecial java/lang/Object/<init>()V
   return
.end method

;
; test method
.method public test([Ljava/lang/String;)I
   .limit stack 7
   .limit locals 2

   

   sipush 555
   sipush 555
   sipush 777
   sipush 343
   dup2_x2 ; must lead the stack to: ...777,343,555,555,777,343

   sipush 343
   if_icmpne lab1
   sipush 777
   if_icmpne lab2
   sipush 555
   if_icmpne lab3
   sipush 555
   if_icmpne lab4
   sipush 343
   if_icmpne lab5
   sipush 777
   if_icmpne lab6

   sipush 104
   ireturn
lab1:
   pop
lab2:
   pop
lab3:
   pop
lab4:
   pop
lab5:
   pop
lab6:
   sipush 105
   ireturn

.end method

;
; standard main function
.method public static main([Ljava/lang/String;)V
  .limit stack 2
  .limit locals 1

  new org/apache/harmony/vts/test/vm/jvms/instructions/stack/dup2_x2/dup2_x201/dup2_x20101/dup2_x20101p
  dup
  invokespecial org/apache/harmony/vts/test/vm/jvms/instructions/stack/dup2_x2/dup2_x201/dup2_x20101/dup2_x20101p/<init>()V
  aload_0
  invokevirtual org/apache/harmony/vts/test/vm/jvms/instructions/stack/dup2_x2/dup2_x201/dup2_x20101/dup2_x20101p/test([Ljava/lang/String;)I
  invokestatic java/lang/System/exit(I)V

  return
.end method
