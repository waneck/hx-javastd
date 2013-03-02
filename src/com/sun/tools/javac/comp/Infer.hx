package com.sun.tools.javac.comp;
/*
* Copyright (c) 1999, 2012, Oracle and/or its affiliates. All rights reserved.
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
/** Helper class for type parameter inference, used by the attribution phase.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class Infer
{
	private static var inferKey(default, null) : com.sun.tools.javac.util.Context.Context_Key<com.sun.tools.javac.comp.Infer>;
	
	/** A value for prototypes that admit any type, including polymorphic ones. */
	public static var anyPoly(default, null) : com.sun.tools.javac.code.Type;
	
	@:overload public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.tools.javac.comp.Infer;
	
	@:overload private function new(context : com.sun.tools.javac.util.Context) : Void;
	
	/** Try to instantiate expression type `that' to given type `to'.
	*  If a maximal instantiation exists which makes this type
	*  a subtype of type `to', return the instantiated type.
	*  If no instantiation exists, or if several incomparable
	*  best instantiations exist throw a NoInstanceException.
	*/
	@:overload public function instantiateExpr(that : ForAll, to : com.sun.tools.javac.code.Type, warn : com.sun.tools.javac.util.Warner) : com.sun.tools.javac.code.Type;
	
	/** Instantiate method type `mt' by finding instantiations of
	*  `tvars' so that method can be applied to `argtypes'.
	*/
	@:overload public function instantiateMethod(env : com.sun.tools.javac.comp.Env<com.sun.tools.javac.comp.AttrContext>, tvars : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, mt : MethodType, msym : com.sun.tools.javac.code.Symbol, argtypes : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, allowBoxing : Bool, useVarargs : Bool, warn : com.sun.tools.javac.util.Warner) : com.sun.tools.javac.code.Type;
	
	
}
@:native('com$sun$tools$javac$comp$Infer$InferenceException') extern class Infer_InferenceException extends com.sun.tools.javac.comp.Resolve.Resolve_InapplicableMethodException
{
	
}
@:native('com$sun$tools$javac$comp$Infer$NoInstanceException') extern class Infer_NoInstanceException extends com.sun.tools.javac.comp.Infer.Infer_InferenceException
{
	
}
@:native('com$sun$tools$javac$comp$Infer$InvalidInstanceException') extern class Infer_InvalidInstanceException extends com.sun.tools.javac.comp.Infer.Infer_InferenceException
{
	
}
/**
* A delegated type representing a partially uninferred method type.
* The return type of a partially uninferred method type is a ForAll
* type - when the return type is instantiated (see Infer.instantiateExpr)
* the underlying method type is also updated.
*/
@:native('com$sun$tools$javac$comp$Infer$UninferredMethodType') @:internal extern class Infer_UninferredMethodType extends DelegatedType
{
	@:overload public function new(mtype : MethodType, tvars : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : Void;
	
	@:overload public function asMethodType() : MethodType;
	
	@:overload public function map(f : Mapping) : com.sun.tools.javac.code.Type;
	
	
}
@:native('com$sun$tools$javac$comp$Infer$UninferredMethodType$UninferredReturnType') @:internal extern class Infer_UninferredMethodType_UninferredReturnType extends ForAll
{
	@:overload public function new(tvars : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, restype : com.sun.tools.javac.code.Type) : Void;
	
	@:overload public function inst(actuals : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, types : com.sun.tools.javac.code.Types) : com.sun.tools.javac.code.Type;
	
	@:overload public function getConstraints(tv : TypeVar, ck : com.sun.tools.javac.code.Type.Type_ForAll_ConstraintKind) : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>;
	
	
}
