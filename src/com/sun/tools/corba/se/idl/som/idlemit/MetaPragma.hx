package com.sun.tools.corba.se.idl.som.idlemit;
/*
* Copyright (c) 1999, Oracle and/or its affiliates. All rights reserved.
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
/*
*  COMPONENT_NAME: shasta
*
*  ORIGINS: 27
*
* Licensed Materials - Property of IBM
* 5639-D57 (C) COPYRIGHT International Business Machines Corp. 1997,1998,1999
* RMI-IIOP v1.0
*
*/
extern class MetaPragma extends com.sun.tools.corba.se.idl.PragmaHandler
{
	/* key to access the Cached meta info in com.sun.tools.corba.se.idl.SymtabEntry */
	@:public @:static public static var metaKey : Int;
	
	/**
	* Main entry point for the MetaPragma handler
	* @param pragma string for pragma name
	* @param currentToken next token in the input stream.
	* @return true if this is a meta pragma.
	*/
	@:overload @:public override public function process(pragma : String, currentToken : String) : Bool;
	
	/**
	* Fold the meta info from the forward entry into its corresponding
	* interface entry.
	* @param forwardEntry the forward entry to process
	*/
	@:overload @:static @:public public static function processForward(forwardEntry : com.sun.tools.corba.se.idl.ForwardEntry) : Void;
	
	
}
