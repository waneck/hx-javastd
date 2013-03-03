package com.sun.tools.example.debug.gui;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
* This source code is provided to illustrate the usage of a given feature
* or technique and has been deliberately simplified. Additional steps
* required for a production-quality application, such as security checks,
* input validation and proper error handling, might not be present in
* this sample code.
*/
extern class ClassTreeTool extends javax.swing.JPanel
{
	@:overload @:public public function new(env : com.sun.tools.example.debug.gui.Environment) : Void;
	
	
}
@:native('com$sun$tools$example$debug$gui$ClassTreeTool$ClassTreeToolListener') @:internal extern class ClassTreeTool_ClassTreeToolListener extends com.sun.tools.example.debug.event.JDIAdapter implements com.sun.tools.example.debug.event.JDIListener implements com.sun.tools.example.debug.bdi.SessionListener
{
	@:overload @:public public function sessionStart(e : java.util.EventObject) : Void;
	
	@:overload @:public public function sessionInterrupt(e : java.util.EventObject) : Void;
	
	@:overload @:public public function sessionContinue(e : java.util.EventObject) : Void;
	
	@:overload @:public override public function classPrepare(e : com.sun.tools.example.debug.event.ClassPrepareEventSet) : Void;
	
	@:overload @:public override public function classUnload(e : com.sun.tools.example.debug.event.ClassUnloadEventSet) : Void;
	
	@:overload @:public override public function vmDisconnect(e : com.sun.tools.example.debug.event.VMDisconnectEventSet) : Void;
	
	
}
@:native('com$sun$tools$example$debug$gui$ClassTreeTool$ClassTreeNode') @:internal extern class ClassTreeTool_ClassTreeNode extends javax.swing.tree.DefaultMutableTreeNode
{
	@:overload @:public override public function toString() : String;
	
	@:overload @:public public function getReferenceType() : com.sun.jdi.ReferenceType;
	
	@:overload @:public public function getReferenceTypeName() : String;
	
	@:overload @:public override public function isLeaf() : Bool;
	
	@:overload @:public public function addClass(refTy : com.sun.jdi.ReferenceType) : Void;
	
	@:overload @:public public function removeClass(className : String) : Void;
	
	
}
