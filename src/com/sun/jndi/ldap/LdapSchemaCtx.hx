package com.sun.jndi.ldap;
/*
* Copyright (c) 1999, 2003, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class LdapSchemaCtx extends com.sun.jndi.toolkit.dir.HierMemDirCtx
{
	@:overload @:public override public function close() : Void;
	
	@:overload @:final @:public override public function bind(name : javax.naming.Name, obj : Dynamic, attrs : javax.naming.directory.Attributes) : Void;
	
	@:overload @:final @:protected override private function doBind(name : javax.naming.Name, obj : Dynamic, attrs : javax.naming.directory.Attributes, useFactory : Bool) : Void;
	
	@:overload @:final @:public override public function rebind(name : javax.naming.Name, obj : Dynamic, attrs : javax.naming.directory.Attributes) : Void;
	
	@:overload @:final @:protected override private function doRebind(name : javax.naming.Name, obj : Dynamic, attrs : javax.naming.directory.Attributes, useFactory : Bool) : Void;
	
	@:overload @:final @:protected override private function doUnbind(name : javax.naming.Name) : Void;
	
	@:overload @:final @:protected override private function doRename(oldname : javax.naming.Name, newname : javax.naming.Name) : Void;
	
	@:overload @:final @:protected override private function doDestroySubcontext(name : javax.naming.Name) : Void;
	
	@:overload @:final @:protected override private function doCreateSubcontext(name : javax.naming.Name, attrs : javax.naming.directory.Attributes) : javax.naming.directory.DirContext;
	
	@:overload @:final @:protected override private function doModifyAttributes(mods : java.NativeArray<javax.naming.directory.ModificationItem>) : Void;
	
	@:overload @:final @:protected override private function createNewCtx() : com.sun.jndi.toolkit.dir.HierMemDirCtx;
	
	
}
@:native('com$sun$jndi$ldap$LdapSchemaCtx$SchemaInfo') @:internal extern class LdapSchemaCtx_SchemaInfo
{
	
}
