package sun.rmi.rmic.newrmic.jrmp;
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
/**
* JRMP rmic back end; generates source code for JRMP stub and
* skeleton classes.
*
* WARNING: The contents of this source file are not part of any
* supported API.  Code that depends on them does so at its own risk:
* they are subject to change or removal without notice.
*
* @author Peter Jones
**/
extern class JrmpGenerator implements sun.rmi.rmic.newrmic.Generator
{
	/**
	* Creates a new JrmpGenerator.
	**/
	@:overload public function new() : Void;
	
	/**
	* The JRMP generator recognizes command line options for
	* selecting the JRMP stub protocol version to generate classes
	* for.  Only one such option is allowed.
	**/
	@:overload public function parseArgs(args : java.NativeArray<String>, main : sun.rmi.rmic.newrmic.Main) : Bool;
	
	/**
	* The JRMP generator does not require an environment class more
	* specific than BatchEnvironment.
	**/
	@:overload public function envClass() : Class<sun.rmi.rmic.newrmic.BatchEnvironment>;
	
	@:overload public function bootstrapClassNames() : java.util.Set<String>;
	
	/**
	* Generates the source file(s) for the JRMP stub class and
	* (optionally) skeleton class for the specified remote
	* implementation class.
	**/
	@:overload public function generate(env : sun.rmi.rmic.newrmic.BatchEnvironment, inputClass : com.sun.javadoc.ClassDoc, destDir : java.io.File) : Void;
	
	
}
