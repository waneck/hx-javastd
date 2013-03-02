package com.sun.source.util;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class TaskEvent
{
	@:overload public function new(kind : com.sun.source.util.TaskEvent.TaskEvent_Kind) : Void;
	
	@:overload public function new(kind : com.sun.source.util.TaskEvent.TaskEvent_Kind, sourceFile : javax.tools.JavaFileObject) : Void;
	
	@:overload public function new(kind : com.sun.source.util.TaskEvent.TaskEvent_Kind, unit : com.sun.source.tree.CompilationUnitTree) : Void;
	
	@:overload public function new(kind : com.sun.source.util.TaskEvent.TaskEvent_Kind, unit : com.sun.source.tree.CompilationUnitTree, clazz : javax.lang.model.element.TypeElement) : Void;
	
	@:overload public function getKind() : com.sun.source.util.TaskEvent.TaskEvent_Kind;
	
	@:overload public function getSourceFile() : javax.tools.JavaFileObject;
	
	@:overload public function getCompilationUnit() : com.sun.source.tree.CompilationUnitTree;
	
	@:overload public function getTypeElement() : javax.lang.model.element.TypeElement;
	
	@:overload public function toString() : String;
	
	
}
/**
* Kind of task event.
* @since 1.6
*/
@:require(java6) @:native('com$sun$source$util$TaskEvent$Kind') extern enum TaskEvent_Kind
{
	/**
	* For events related to the parsing of a file.
	*/
	PARSE;
	/**
	* For events relating to elements being entered.
	**/
	ENTER;
	/**
	* For events relating to elements being analyzed for errors.
	**/
	ANALYZE;
	/**
	* For events relating to class files being generated.
	**/
	GENERATE;
	/**
	* For events relating to overall annotaion processing.
	**/
	ANNOTATION_PROCESSING;
	/**
	* For events relating to an individual annotation processing round.
	**/
	ANNOTATION_PROCESSING_ROUND;
	
}

