package com.sun.tools.javac.processing;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
* An implementation of the Messager built on top of log.
*
* <p><b>This is NOT part of any supported API.
* If you write code that depends on this, you do so at your own risk.
* This code and its internal interfaces are subject to change or
* deletion without notice.</b>
*/
extern class JavacMessager implements javax.annotation.processing.Messager
{
	@:overload @:public public function printMessage(kind : javax.tools.Diagnostic.Diagnostic_Kind, msg : java.lang.CharSequence) : Void;
	
	@:overload @:public public function printMessage(kind : javax.tools.Diagnostic.Diagnostic_Kind, msg : java.lang.CharSequence, e : javax.lang.model.element.Element) : Void;
	
	/**
	* Prints a message of the specified kind at the location of the
	* annotation mirror of the annotated element.
	*
	* @param kind the kind of message
	* @param msg  the message, or an empty string if none
	* @param e    the annotated element
	* @param a    the annotation to use as a position hint
	*/
	@:overload @:public public function printMessage(kind : javax.tools.Diagnostic.Diagnostic_Kind, msg : java.lang.CharSequence, e : javax.lang.model.element.Element, a : javax.lang.model.element.AnnotationMirror) : Void;
	
	/**
	* Prints a message of the specified kind at the location of the
	* annotation value inside the annotation mirror of the annotated
	* element.
	*
	* @param kind the kind of message
	* @param msg  the message, or an empty string if none
	* @param e    the annotated element
	* @param a    the annotation containing the annotaiton value
	* @param v    the annotation value to use as a position hint
	*/
	@:overload @:public public function printMessage(kind : javax.tools.Diagnostic.Diagnostic_Kind, msg : java.lang.CharSequence, e : javax.lang.model.element.Element, a : javax.lang.model.element.AnnotationMirror, v : javax.lang.model.element.AnnotationValue) : Void;
	
	/**
	* Prints an error message.
	* Equivalent to {@code printError(null, msg)}.
	* @param msg  the message, or an empty string if none
	*/
	@:overload @:public public function printError(msg : String) : Void;
	
	/**
	* Prints a warning message.
	* Equivalent to {@code printWarning(null, msg)}.
	* @param msg  the message, or an empty string if none
	*/
	@:overload @:public public function printWarning(msg : String) : Void;
	
	/**
	* Prints a notice.
	* @param msg  the message, or an empty string if none
	*/
	@:overload @:public public function printNotice(msg : String) : Void;
	
	@:overload @:public public function errorRaised() : Bool;
	
	@:overload @:public public function errorCount() : Int;
	
	@:overload @:public public function warningCount() : Int;
	
	@:overload @:public public function newRound(context : com.sun.tools.javac.util.Context) : Void;
	
	@:overload @:public public function toString() : String;
	
	
}
