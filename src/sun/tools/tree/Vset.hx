package sun.tools.tree;
/*
* Copyright (c) 1996, 2003, Oracle and/or its affiliates. All rights reserved.
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
* WARNING: The contents of this source file are not part of any
* supported API.  Code that depends on them does so at its own risk:
* they are subject to change or removal without notice.
*/
extern class Vset implements sun.tools.java.Constants
{
	/**
	* Create an empty Vset.
	*/
	@:overload public function new() : Void;
	
	/**
	* Create an copy of the given Vset.
	* (However, DEAD_END simply returns itself.)
	*/
	@:overload public function copy() : Vset;
	
	/**
	* Ask if this is a vset for a dead end.
	* Answer true only for the canonical dead-end, DEAD_END.
	* A canonical dead-end is produced only as a result of
	* a statement that cannot complete normally, as specified
	* by the JLS.  Due to the special-case rules for if-then
	* and if-then-else, this may fail to detect actual unreachable
	* code that could easily be identified.
	*/
	@:overload public function isDeadEnd() : Bool;
	
	/**
	* Ask if this is a vset for a dead end.
	* Answer true for any dead-end.
	* Since 'clearDeadEnd' has no effect on this predicate,
	* if-then and if-then-else are handled in the more 'obvious'
	* and precise way.  This predicate is to be preferred for
	* dead code elimination purposes.
	* (Presently used in workaround for bug 4173473 in MethodExpression.java)
	*/
	@:overload public function isReallyDeadEnd() : Bool;
	
	/**
	* Replace canonical DEAD_END with a distinct but
	* equivalent Vset.  The bits are unaltered, but
	* the result does not answer true to 'isDeadEnd'.
	* <p>
	* Used mostly for error recovery, but see
	* 'IfStatement.check', where it is used to
	* implement the special-case treatment of
	* statement reachability for such statements.
	*/
	@:overload public function clearDeadEnd() : Vset;
	
	/**
	* Ask if a var is definitely assigned.
	*/
	@:overload public function testVar(varNumber : Int) : Bool;
	
	/**
	* Ask if a var is definitely un-assigned.
	* (This is not just the negation of testVar:
	* It's possible for neither to be true.)
	*/
	@:overload public function testVarUnassigned(varNumber : Int) : Bool;
	
	/**
	* Note that a var is definitely assigned.
	* (Side-effecting.)
	*/
	@:overload public function addVar(varNumber : Int) : Vset;
	
	/**
	* Note that a var is definitely un-assigned.
	* (Side-effecting.)
	*/
	@:overload public function addVarUnassigned(varNumber : Int) : Vset;
	
	/**
	* Retract any assertion about the var.
	* This operation is ineffective on a dead-end.
	* (Side-effecting.)
	*/
	@:overload public function clearVar(varNumber : Int) : Vset;
	
	/**
	* Join with another vset.  This is set intersection.
	* (Side-effecting.)
	*/
	@:overload public function join(other : Vset) : Vset;
	
	/**
	* Add in the definite assignment bits of another vset,
	* but join the definite unassignment bits.  This unusual
	* operation is used only for 'finally' blocks.  The
	* original vset 'this' is destroyed by this operation.
	* (Part of fix for 4068688.)
	*/
	@:overload public function addDAandJoinDU(other : Vset) : Vset;
	
	/**
	* Construct a vset consisting of the DA bits of the first argument
	* and the DU bits of the second argument.  This is a higly unusual
	* operation, as it implies a case where the flowgraph for DA analysis
	* differs from that for DU analysis.  It is only needed for analysing
	* 'try' blocks.  The result is a dead-end iff the first argument is
	* dead-end. (Part of fix for 4068688.)
	*/
	@:overload public static function firstDAandSecondDU(sourceDA : Vset, sourceDU : Vset) : Vset;
	
	/**
	* Remove variables from the vset that are no longer part of
	* a context.  Zeroes are stored past varNumber.
	* (Side-effecting.)<p>
	* However, if this is a dead end, keep it so.
	* That is, leave an infinite tail of bits set.
	*/
	@:overload public function removeAdditionalVars(varNumber : Int) : Vset;
	
	/**
	* Return one larger than the highest bit set.
	*/
	@:overload public function varLimit() : Int;
	
	@:overload public function toString() : String;
	
	
}
