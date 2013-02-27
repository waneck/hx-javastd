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
* Responsible for loading (class) files from the CLASSPATH. Inspired by
* sun.tools.ClassPath.
*
* @author  <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
*/
extern class ClassPath implements java.io.Serializable
{
	public static var SYSTEM_CLASS_PATH(default, null) : ClassPath;
	
	/**
	* Search for classes in given path.
	*/
	@:overload public function new(class_path : String) : Void;
	
	/**
	* Search for classes in CLASSPATH.
	* @deprecated Use SYSTEM_CLASS_PATH constant
	*/
	@:overload public function new() : Void;
	
	/** @return used class path string
	*/
	@:overload public function toString() : String;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	/** Checks for class path components in the following properties:
	* "java.class.path", "sun.boot.class.path", "java.ext.dirs"
	*
	* @return class path as used by default by BCEL
	*/
	@:overload @:final public static function getClassPath() : String;
	
	/**
	* @param name fully qualified class name, e.g. java.lang.String
	* @return input stream for class
	*/
	@:overload public function getInputStream(name : String) : java.io.InputStream;
	
	/**
	* Return stream for class or resource on CLASSPATH.
	*
	* @param name fully qualified file name, e.g. java/lang/String
	* @param suffix file name ends with suff, e.g. .java
	* @return input stream for file on class path
	*/
	@:overload public function getInputStream(name : String, suffix : String) : java.io.InputStream;
	
	/**
	* @param name fully qualified file name, e.g. java/lang/String
	* @param suffix file name ends with suff, e.g. .java
	* @return class file for the java class
	*/
	@:overload public function getClassFile(name : String, suffix : String) : ClassPath_ClassFile;
	
	/**
	* @param name fully qualified class name, e.g. java.lang.String
	* @return input stream for class
	*/
	@:overload public function getClassFile(name : String) : ClassPath_ClassFile;
	
	/**
	* @param name fully qualified file name, e.g. java/lang/String
	* @param suffix file name ends with suffix, e.g. .java
	* @return byte array for file on class path
	*/
	@:overload public function getBytes(name : String, suffix : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* @return byte array for class
	*/
	@:overload public function getBytes(name : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* @param name name of file to search for, e.g. java/lang/String.java
	* @return full (canonical) path for file
	*/
	@:overload public function getPath(name : String) : String;
	
	/**
	* @param name name of file to search for, e.g. java/lang/String
	* @param suffix file name suffix, e.g. .java
	* @return full (canonical) path for file, if it exists
	*/
	@:overload public function getPath(name : String, suffix : String) : String;
	
	
}
@:native('com$sun$org$apache$bcel$internal$util$ClassPath$PathEntry') @:internal extern class ClassPath_PathEntry implements java.io.Serializable
{
	
}
/** Contains information about file/ZIP entry of the Java class.
*/
@:native('com$sun$org$apache$bcel$internal$util$ClassPath$ClassFile') extern interface ClassPath_ClassFile
{
	/** @return input stream for class file.
	*/
	@:overload @:abstract public function getInputStream() : java.io.InputStream;
	
	/** @return canonical path to class file.
	*/
	@:overload @:abstract public function getPath() : String;
	
	/** @return base path of found class, i.e. class is contained relative
	* to that path, which may either denote a directory, or zip file
	*/
	@:overload @:abstract public function getBase() : String;
	
	/** @return modification time of class file.
	*/
	@:overload @:abstract public function getTime() : haxe.Int64;
	
	/** @return size of class file.
	*/
	@:overload @:abstract public function getSize() : haxe.Int64;
	
	
}
@:native('com$sun$org$apache$bcel$internal$util$ClassPath$Dir') @:internal extern class ClassPath_Dir extends ClassPath_PathEntry
{
	@:overload public function toString() : String;
	
	
}
@:native('com$sun$org$apache$bcel$internal$util$ClassPath$Zip') @:internal extern class ClassPath_Zip extends ClassPath_PathEntry
{
	
}
