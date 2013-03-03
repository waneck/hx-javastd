package com.sun.tools.internal.xjc.addon.episode;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class PluginImpl extends com.sun.tools.internal.xjc.Plugin
{
	@:overload @:public override public function getOptionName() : String;
	
	@:overload @:public override public function getUsage() : String;
	
	@:overload @:public override public function parseArgument(opt : com.sun.tools.internal.xjc.Options, args : java.NativeArray<String>, i : Int) : Int;
	
	/**
	* Capture all the generated classes from global schema components
	* and generate them in an episode file.
	*/
	@:overload @:public override public function run(model : com.sun.tools.internal.xjc.outline.Outline, opt : com.sun.tools.internal.xjc.Options, errorHandler : org.xml.sax.ErrorHandler) : Bool;
	
	
}
@:native('com$sun$tools$internal$xjc$addon$episode$PluginImpl$OutlineAdaptor') @:internal extern class PluginImpl_OutlineAdaptor
{
	@:overload @:public public function new(schemaComponent : com.sun.xml.internal.xsom.XSComponent, outlineType : com.sun.tools.internal.xjc.addon.episode.PluginImpl.PluginImpl_OutlineAdaptor_OutlineType, implName : String, packageName : String) : Void;
	
	
}
@:native('com$sun$tools$internal$xjc$addon$episode$PluginImpl$OutlineAdaptor$OutlineType') privateextern enum PluginImpl_OutlineAdaptor_OutlineType
{
	CLASS;
	ENUM;
	
}

@:native('com$sun$tools$internal$xjc$addon$episode$PluginImpl$OutlineAdaptor$OutlineType$BindingsBuilder') @:internal extern interface PluginImpl_OutlineAdaptor_OutlineType_BindingsBuilder
{
	@:overload public function build(adaptor : com.sun.tools.internal.xjc.addon.episode.PluginImpl.PluginImpl_OutlineAdaptor, bindings : com.sun.xml.internal.bind.v2.schemagen.episode.Bindings) : Void;
	
	
}
@:native('com$sun$tools$internal$xjc$addon$episode$PluginImpl$OutlineAdaptor$OutlineType$BindingsBuilder') @:internal extern interface PluginImpl_OutlineAdaptor_OutlineType_BindingsBuilder
{
	@:overload public function build(adaptor : com.sun.tools.internal.xjc.addon.episode.PluginImpl.PluginImpl_OutlineAdaptor, bindings : com.sun.xml.internal.bind.v2.schemagen.episode.Bindings) : Void;
	
	
}
@:native('com$sun$tools$internal$xjc$addon$episode$PluginImpl$PerSchemaOutlineAdaptors') @:internal extern class PluginImpl_PerSchemaOutlineAdaptors
{
	
}
