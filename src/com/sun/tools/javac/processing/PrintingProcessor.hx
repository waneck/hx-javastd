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
* A processor which prints out elements.  Used to implement the
* -Xprint option; the included visitor class is used to implement
* Elements.printElements.
*
* <p><b>This is NOT part of any supported API.
* If you write code that depends on this, you do so at your own risk.
* This code and its internal interfaces are subject to change or
* deletion without notice.</b>
*/
extern class PrintingProcessor extends javax.annotation.processing.AbstractProcessor
{
	@:overload public function new() : Void;
	
	@:overload public function setWriter(w : java.io.Writer) : Void;
	
	@:overload override public function process(tes : java.util.Set<javax.lang.model.element.TypeElement>, renv : javax.annotation.processing.RoundEnvironment) : Bool;
	
	
}
/**
* Used for the -Xprint option and called by Elements.printElements
*/
@:native('com$sun$tools$javac$processing$PrintingProcessor$PrintingElementVisitor') extern class PrintingProcessor_PrintingElementVisitor extends javax.lang.model.util.SimpleElementVisitor7<PrintingProcessor_PrintingElementVisitor, Null<Bool>>
{
	@:overload public function new(w : java.io.Writer, elementUtils : javax.lang.model.util.Elements) : Void;
	
	@:overload private function defaultAction(e : javax.lang.model.element.Element, newLine : Null<Bool>) : PrintingProcessor_PrintingElementVisitor;
	
	@:overload public function visitExecutable(e : javax.lang.model.element.ExecutableElement, p : Null<Bool>) : PrintingProcessor_PrintingElementVisitor;
	
	@:overload public function visitType(e : javax.lang.model.element.TypeElement, p : Null<Bool>) : PrintingProcessor_PrintingElementVisitor;
	
	@:overload public function visitVariable(e : javax.lang.model.element.VariableElement, newLine : Null<Bool>) : PrintingProcessor_PrintingElementVisitor;
	
	@:overload public function visitTypeParameter(e : javax.lang.model.element.TypeParameterElement, p : Null<Bool>) : PrintingProcessor_PrintingElementVisitor;
	
	@:overload public function visitPackage(e : javax.lang.model.element.PackageElement, p : Null<Bool>) : PrintingProcessor_PrintingElementVisitor;
	
	@:overload public function flush() : Void;
	
	
}
