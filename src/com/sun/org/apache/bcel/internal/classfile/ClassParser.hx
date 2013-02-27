package com.sun.org.apache.bcel.internal.classfile;
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
* Wrapper class that parses a given Java .class file. The method <A
* href ="#parse">parse</A> returns a <A href ="JavaClass.html">
* JavaClass</A> object on success. When an I/O error or an
* inconsistency occurs an appropiate exception is propagated back to
* the caller.
*
* The structure and the names comply, except for a few conveniences,
* exactly with the <A href="ftp://java.sun.com/docs/specs/vmspec.ps">
* JVM specification 1.0</a>. See this paper for
* further details about the structure of a bytecode file.
*
* @author <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
*/
extern class ClassParser
{
	/**
	* Parse class from the given stream.
	*
	* @param file Input stream
	* @param file_name File name
	*/
	@:overload public function new(file : java.io.InputStream, file_name : String) : Void;
	
	/** Parse class from given .class file.
	*
	* @param file_name file name
	* @throws IOException
	*/
	@:overload public function new(file_name : String) : Void;
	
	/** Parse class from given .class file in a ZIP-archive
	*
	* @param file_name file name
	* @throws IOException
	*/
	@:overload public function new(zip_file : String, file_name : String) : Void;
	
	/**
	* Parse the given Java class file and return an object that represents
	* the contained data, i.e., constants, methods, fields and commands.
	* A <em>ClassFormatException</em> is raised, if the file is not a valid
	* .class file. (This does not include verification of the byte code as it
	* is performed by the java interpreter).
	*
	* @return Class object representing the parsed class file
	* @throws  IOException
	* @throws  ClassFormatException
	*/
	@:overload public function parse() : com.sun.org.apache.bcel.internal.classfile.JavaClass;
	
	
}
