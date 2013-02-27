package com.sun.org.apache.bcel.internal.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/* ====================================================================
* The Apache Software License, Version 1.1
*
* Copyright (c) 2001 The Apache Software Foundation.  All rights
* reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions
* are met:
*
* 1. Redistributions of source code must retain the above copyright
*    notice, this list of conditions and the following disclaimer.
*
* 2. Redistributions in binary form must reproduce the above copyright
*    notice, this list of conditions and the following disclaimer in
*    the documentation and/or other materials provided with the
*    distribution.
*
* 3. The end-user documentation included with the redistribution,
*    if any, must include the following acknowledgment:
*       "This product includes software developed by the
*        Apache Software Foundation (http://www.apache.org/)."
*    Alternately, this acknowledgment may appear in the software itself,
*    if and wherever such third-party acknowledgments normally appear.
*
* 4. The names "Apache" and "Apache Software Foundation" and
*    "Apache BCEL" must not be used to endorse or promote products
*    derived from this software without prior written permission. For
*    written permission, please contact apache@apache.org.
*
* 5. Products derived from this software may not be called "Apache",
*    "Apache BCEL", nor may "Apache" appear in their name, without
*    prior written permission of the Apache Software Foundation.
*
* THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESSED OR IMPLIED
* WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
* OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
* DISCLAIMED.  IN NO EVENT SHALL THE APACHE SOFTWARE FOUNDATION OR
* ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
* SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
* LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
* USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
* ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
* OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
* OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
* SUCH DAMAGE.
* ====================================================================
*
* This software consists of voluntary contributions made by many
* individuals on behalf of the Apache Software Foundation.  For more
* information on the Apache Software Foundation, please see
* <http://www.apache.org/>.
*/
/**
* This repository is used in situations where a Class is created
* outside the realm of a ClassLoader. Classes are loaded from
* the file systems using the paths specified in the given
* class path. By default, this is the value returned by
* ClassPath.getClassPath().
* <br>
* It is designed to be used as a singleton, however it
* can also be used with custom classpaths.
*
/**
* Abstract definition of a class repository. Instances may be used
* to load classes from different sources and may be used in the
* Repository.setRepository method.
*
* @see com.sun.org.apache.bcel.internal.Repository
*
* @author <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
* @author David Dixon-Peugh
*/
extern class SyntheticRepository implements com.sun.org.apache.bcel.internal.util.Repository
{
	@:overload public static function getInstance() : SyntheticRepository;
	
	@:overload public static function getInstance(classPath : com.sun.org.apache.bcel.internal.util.ClassPath) : SyntheticRepository;
	
	/**
	* Store a new JavaClass instance into this Repository.
	*/
	@:overload public function storeClass(clazz : com.sun.org.apache.bcel.internal.classfile.JavaClass) : Void;
	
	/**
	* Remove class from repository
	*/
	@:overload public function removeClass(clazz : com.sun.org.apache.bcel.internal.classfile.JavaClass) : Void;
	
	/**
	* Find an already defined (cached) JavaClass object by name.
	*/
	@:overload public function findClass(className : String) : com.sun.org.apache.bcel.internal.classfile.JavaClass;
	
	/**
	* Load a JavaClass object for the given class name using
	* the CLASSPATH environment variable.
	*/
	@:overload public function loadClass(className : String) : com.sun.org.apache.bcel.internal.classfile.JavaClass;
	
	/**
	* Try to find class source via getResourceAsStream().
	* @see Class
	* @return JavaClass object for given runtime class
	*/
	@:overload public function loadClass(clazz : Class<Dynamic>) : com.sun.org.apache.bcel.internal.classfile.JavaClass;
	
	/** Clear all entries from cache.
	*/
	@:overload public function clear() : Void;
	
	
}