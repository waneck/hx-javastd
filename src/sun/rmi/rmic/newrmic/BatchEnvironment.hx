package sun.rmi.rmic.newrmic;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
/**
* The environment for an rmic compilation batch.
*
* A BatchEnvironment contains a RootDoc, which is the entry point
* into the doclet environment for the associated rmic compilation
* batch.  A BatchEnvironment collects the source files generated
* during the batch's execution, for eventual source code compilation
* and, possibly, deletion.  Errors that occur during generation
* activity should be reported through the BatchEnvironment's "error"
* method.
*
* A protocol-specific generator class may require the use of a
* particular BatchEnvironment subclass for enhanced environment
* functionality.  A BatchEnvironment subclass must declare a
* public constructor with one parameter of type RootDoc.
*
* WARNING: The contents of this source file are not part of any
* supported API.  Code that depends on them does so at its own risk:
* they are subject to change or removal without notice.
*
* @author Peter Jones
**/
extern class BatchEnvironment
{
	/**
	* Creates a new BatchEnvironment with the specified RootDoc.
	**/
	@:overload public function new(rootDoc : com.sun.javadoc.RootDoc) : Void;
	
	/**
	* Returns the RootDoc for this environment.
	**/
	@:overload public function rootDoc() : com.sun.javadoc.RootDoc;
	
	@:overload public function docRemote() : com.sun.javadoc.ClassDoc;
	
	@:overload public function docException() : com.sun.javadoc.ClassDoc;
	
	@:overload public function docRemoteException() : com.sun.javadoc.ClassDoc;
	
	@:overload public function docRuntimeException() : com.sun.javadoc.ClassDoc;
	
	/**
	* Sets this environment's verbosity status.
	**/
	@:overload public function setVerbose(verbose : Bool) : Void;
	
	/**
	* Returns this environment's verbosity status.
	**/
	@:overload public function verbose() : Bool;
	
	/**
	* Adds the specified file to the list of source files generated
	* during this batch.
	**/
	@:overload public function addGeneratedFile(file : java.io.File) : Void;
	
	/**
	* Returns the list of files generated during this batch.
	**/
	@:overload public function generatedFiles() : java.util.List<java.io.File>;
	
	/**
	* Outputs the specified (non-error) message.
	**/
	@:overload public function output(msg : String) : Void;
	
	/**
	* Reports an error using the specified resource key and text
	* formatting arguments.
	**/
	@:overload public function error(key : String, args : java.NativeArray<String>) : Void;
	
	
}
