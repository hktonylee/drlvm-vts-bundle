/*
    Copyright 2005-2006 The Apache Software Foundation or its licensors, as applicable

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.

    See the License for the specific language governing permissions and
    limitations under the License.
*/

 
#include <jni.h>

/*
 * Method: org.apache.harmony.vts.test.vm.jvms.instructions.invokeReturn.invokeinterface.invokeinterface11.invokeinterface1102.invokeinterface1102p.nativeMethod()V
 */
JNIEXPORT void JNICALL
Java_org_apache_harmony_vts_test_vm_jvms_instructions_invokeReturn_invokeinterface_invokeinterface11_invokeinterface1102_invokeinterface1102p_nativeMethod(JNIEnv *, jobject);

JNIEXPORT void JNICALL
Java_org_apache_harmony_vts_test_vm_jvms_instructions_invokeReturn_invokeinterface_invokeinterface11_invokeinterface1102_invokeinterface1102p_nativeMethod
    (JNIEnv *env, jobject obj)
{

    jclass cls = NULL;
	jfieldID fid = NULL;

    cls = (*env)->GetObjectClass(env, obj);
	fid = (*env)->GetStaticFieldID(env,cls,"testField","I");
    (*env)->SetStaticIntField(env, obj, fid, (jint)104);

  return;
}
