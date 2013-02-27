package sun.reflect.annotation;
/*
* Copyright (c) 2003, 2005, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
extern class AnnotationParser
{
	/**
	* Parses the annotations described by the specified byte array.
	* resolving constant references in the specified constant pool.
	* The array must contain an array of annotations as described
	* in the RuntimeVisibleAnnotations_attribute:
	*
	*   u2 num_annotations;
	*   annotation annotations[num_annotations];
	*
	* @throws AnnotationFormatError if an annotation is found to be
	*         malformed.
	*/
	@:overload public static function parseAnnotations(rawAnnotations : java.NativeArray<java.StdTypes.Int8>, constPool : sun.reflect.ConstantPool, container : Class<Dynamic>) : java.util.Map<Class<java.lang.annotation.Annotation>, java.lang.annotation.Annotation>;
	
	/**
	* Parses the parameter annotations described by the specified byte array.
	* resolving constant references in the specified constant pool.
	* The array must contain an array of annotations as described
	* in the RuntimeVisibleParameterAnnotations_attribute:
	*
	*    u1 num_parameters;
	*    {
	*        u2 num_annotations;
	*        annotation annotations[num_annotations];
	*    } parameter_annotations[num_parameters];
	*
	* Unlike parseAnnotations, rawAnnotations must not be null!
	* A null value must be handled by the caller.  This is so because
	* we cannot determine the number of parameters if rawAnnotations
	* is null.  Also, the caller should check that the number
	* of parameters indicated by the return value of this method
	* matches the actual number of method parameters.  A mismatch
	* indicates that an AnnotationFormatError should be thrown.
	*
	* @throws AnnotationFormatError if an annotation is found to be
	*         malformed.
	*/
	@:overload public static function parseParameterAnnotations(rawAnnotations : java.NativeArray<java.StdTypes.Int8>, constPool : sun.reflect.ConstantPool, container : Class<Dynamic>) : java.NativeArray<java.NativeArray<java.lang.annotation.Annotation>>;
	
	/**
	* Returns an annotation of the given type backed by the given
	* member -> value map.
	*/
	@:overload public static function annotationForMap(type : Class<java.lang.annotation.Annotation>, memberValues : java.util.Map<String, Dynamic>) : java.lang.annotation.Annotation;
	
	/**
	* Parses the annotation member value at the current position in the
	* specified byte buffer, resolving constant references in the specified
	* constant pool.  The cursor of the byte buffer must point to a
	* "member_value structure" as described in the
	* RuntimeVisibleAnnotations_attribute:
	*
	*  member_value {
	*    u1 tag;
	*    union {
	*       u2   const_value_index;
	*       {
	*           u2   type_name_index;
	*           u2   const_name_index;
	*       } enum_const_value;
	*       u2   class_info_index;
	*       annotation annotation_value;
	*       {
	*           u2    num_values;
	*           member_value values[num_values];
	*       } array_value;
	*    } value;
	* }
	*
	* The member must be of the indicated type. If it is not, this
	* method returns an AnnotationTypeMismatchExceptionProxy.
	*/
	@:overload public static function parseMemberValue(memberType : Class<Dynamic>, buf : java.nio.ByteBuffer, constPool : sun.reflect.ConstantPool, container : Class<Dynamic>) : Dynamic;
	
	@:overload public static function toArray(annotations : java.util.Map<Class<java.lang.annotation.Annotation>, java.lang.annotation.Annotation>) : java.NativeArray<java.lang.annotation.Annotation>;
	
	
}
