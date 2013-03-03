package com.sun.tools.javap;
/*
* Copyright (c) 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class LocalVariableTypeTableWriter extends com.sun.tools.javap.InstructionDetailWriter
{
	@:overload @:protected private function new(context : com.sun.tools.javap.Context) : Void;
	
	@:overload @:public public function reset(attr : com.sun.tools.classfile.Code_attribute) : Void;
	
	@:overload @:public public function writeDetails(instr : com.sun.tools.classfile.Instruction) : Void;
	
	@:overload @:public public function flush() : Void;
	
	@:overload @:public public function writeLocalVariables(pc : Int, kind : com.sun.tools.javap.LocalVariableTypeTableWriter.LocalVariableTypeTableWriter_NoteKind) : Void;
	
	
}
/**
* Annotate instructions with details about local variables.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
@:native('com$sun$tools$javap$LocalVariableTypeTableWriter$NoteKind') extern enum LocalVariableTypeTableWriter_NoteKind
{
	START;
	END;
	
}

