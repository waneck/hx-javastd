package com.sun.org.apache.xpath.internal.axes;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: WalkerFactory.java,v 1.2.4.1 2005/09/10 03:42:19 jeffsuttor Exp $
*/
extern class WalkerFactory
{
	@:overload @:public @:static public static function isSet(analysis : Int, bits : Int) : Bool;
	
	@:overload @:public @:static public static function diagnoseIterator(name : String, analysis : Int, compiler : com.sun.org.apache.xpath.internal.compiler.Compiler) : Void;
	
	/**
	* Create a new LocPathIterator iterator.  The exact type of iterator
	* returned is based on an analysis of the XPath operations.
	*
	* @param compiler non-null reference to compiler object that has processed
	*                 the XPath operations into an opcode map.
	* @param opPos The position of the operation code for this itterator.
	*
	* @return non-null reference to a LocPathIterator or derivative.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public @:static public static function newDTMIterator(compiler : com.sun.org.apache.xpath.internal.compiler.Compiler, opPos : Int, isTopLevel : Bool) : com.sun.org.apache.xml.internal.dtm.DTMIterator;
	
	/**
	* Special purpose function to see if we can optimize the pattern for
	* a DescendantIterator.
	*
	* @param compiler non-null reference to compiler object that has processed
	*                 the XPath operations into an opcode map.
	* @param stepOpCodePos The opcode position for the step.
	*
	* @return 32 bits as an integer that give information about the location
	* path as a whole.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public @:static public static function getAxisFromStep(compiler : com.sun.org.apache.xpath.internal.compiler.Compiler, stepOpCodePos : Int) : Int;
	
	/**
	* Get a corresponding BIT_XXX from an axis.
	* @param axis One of Axis.ANCESTOR, etc.
	* @return One of BIT_ANCESTOR, etc.
	*/
	@:overload @:static @:public public static function getAnalysisBitFromAxes(axis : Int) : Int;
	
	/**
	* Tell if the predicates need to have proximity knowledge.
	*/
	@:overload @:public @:static public static function mightBeProximate(compiler : com.sun.org.apache.xpath.internal.compiler.Compiler, opPos : Int, stepType : Int) : Bool;
	
	/**
	* Tell if the given axis goes downword.  Bogus name, if you can think of
	* a better one, please do tell.  This really has to do with inverting
	* attribute axis.
	* @param axis One of Axis.XXX.
	* @return true if the axis is not a child axis and does not go up from
	* the axis root.
	*/
	@:overload @:public @:static public static function isDownwardAxisOfMany(axis : Int) : Bool;
	
	@:overload @:public @:static public static function getAnalysisString(analysis : Int) : String;
	
	@:overload @:public @:static public static function hasPredicate(analysis : Int) : Bool;
	
	@:overload @:public @:static public static function isWild(analysis : Int) : Bool;
	
	@:overload @:public @:static public static function walksAncestors(analysis : Int) : Bool;
	
	@:overload @:public @:static public static function walksAttributes(analysis : Int) : Bool;
	
	@:overload @:public @:static public static function walksNamespaces(analysis : Int) : Bool;
	
	@:overload @:public @:static public static function walksChildren(analysis : Int) : Bool;
	
	@:overload @:public @:static public static function walksDescendants(analysis : Int) : Bool;
	
	@:overload @:public @:static public static function walksSubtree(analysis : Int) : Bool;
	
	@:overload @:public @:static public static function walksSubtreeOnlyMaybeAbsolute(analysis : Int) : Bool;
	
	@:overload @:public @:static public static function walksSubtreeOnly(analysis : Int) : Bool;
	
	@:overload @:public @:static public static function walksFilteredList(analysis : Int) : Bool;
	
	@:overload @:public @:static public static function walksSubtreeOnlyFromRootOrContext(analysis : Int) : Bool;
	
	@:overload @:public @:static public static function walksInDocOrder(analysis : Int) : Bool;
	
	@:overload @:public @:static public static function walksFollowingOnlyMaybeAbsolute(analysis : Int) : Bool;
	
	@:overload @:public @:static public static function walksUp(analysis : Int) : Bool;
	
	@:overload @:public @:static public static function walksSideways(analysis : Int) : Bool;
	
	@:overload @:public @:static public static function walksExtraNodes(analysis : Int) : Bool;
	
	@:overload @:public @:static public static function walksExtraNodesOnly(analysis : Int) : Bool;
	
	@:overload @:public @:static public static function isAbsolute(analysis : Int) : Bool;
	
	@:overload @:public @:static public static function walksChildrenOnly(analysis : Int) : Bool;
	
	@:overload @:public @:static public static function walksChildrenAndExtraAndSelfOnly(analysis : Int) : Bool;
	
	@:overload @:public @:static public static function walksDescendantsAndExtraAndSelfOnly(analysis : Int) : Bool;
	
	@:overload @:public @:static public static function walksSelfOnly(analysis : Int) : Bool;
	
	@:overload @:public @:static public static function walksUpOnly(analysis : Int) : Bool;
	
	@:overload @:public @:static public static function walksDownOnly(analysis : Int) : Bool;
	
	@:overload @:public @:static public static function walksDownExtraOnly(analysis : Int) : Bool;
	
	@:overload @:public @:static public static function canSkipSubtrees(analysis : Int) : Bool;
	
	@:overload @:public @:static public static function canCrissCross(analysis : Int) : Bool;
	
	/**
	* Tell if the pattern can be 'walked' with the iteration steps in natural
	* document order, without duplicates.
	*
	* @param analysis The general analysis of the pattern.
	*
	* @return true if the walk can be done in natural order.
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:static @:public public static function isNaturalDocOrder(analysis : Int) : Bool;
	
	@:overload @:public @:static public static function isOneStep(analysis : Int) : Bool;
	
	@:overload @:public @:static public static function getStepCount(analysis : Int) : Int;
	
	/**
	* First 8 bits are the number of top-level location steps.  Hopefully
	*  there will never be more that 255 location steps!!!
	*/
	@:public @:static @:final public static var BITS_COUNT(default, null) : Int;
	
	/** 4 bits are reserved for future use. */
	@:public @:static @:final public static var BITS_RESERVED(default, null) : Int;
	
	/** Bit is on if the expression contains a top-level predicate. */
	@:public @:static @:final public static var BIT_PREDICATE(default, null) : Int;
	
	/** Bit is on if any of the walkers contain an ancestor step. */
	@:public @:static @:final public static var BIT_ANCESTOR(default, null) : Int;
	
	/** Bit is on if any of the walkers contain an ancestor-or-self step. */
	@:public @:static @:final public static var BIT_ANCESTOR_OR_SELF(default, null) : Int;
	
	/** Bit is on if any of the walkers contain an attribute step. */
	@:public @:static @:final public static var BIT_ATTRIBUTE(default, null) : Int;
	
	/** Bit is on if any of the walkers contain a child step. */
	@:public @:static @:final public static var BIT_CHILD(default, null) : Int;
	
	/** Bit is on if any of the walkers contain a descendant step. */
	@:public @:static @:final public static var BIT_DESCENDANT(default, null) : Int;
	
	/** Bit is on if any of the walkers contain a descendant-or-self step. */
	@:public @:static @:final public static var BIT_DESCENDANT_OR_SELF(default, null) : Int;
	
	/** Bit is on if any of the walkers contain a following step. */
	@:public @:static @:final public static var BIT_FOLLOWING(default, null) : Int;
	
	/** Bit is on if any of the walkers contain a following-sibiling step. */
	@:public @:static @:final public static var BIT_FOLLOWING_SIBLING(default, null) : Int;
	
	/** Bit is on if any of the walkers contain a namespace step. */
	@:public @:static @:final public static var BIT_NAMESPACE(default, null) : Int;
	
	/** Bit is on if any of the walkers contain a parent step. */
	@:public @:static @:final public static var BIT_PARENT(default, null) : Int;
	
	/** Bit is on if any of the walkers contain a preceding step. */
	@:public @:static @:final public static var BIT_PRECEDING(default, null) : Int;
	
	/** Bit is on if any of the walkers contain a preceding-sibling step. */
	@:public @:static @:final public static var BIT_PRECEDING_SIBLING(default, null) : Int;
	
	/** Bit is on if any of the walkers contain a self step. */
	@:public @:static @:final public static var BIT_SELF(default, null) : Int;
	
	/**
	* Bit is on if any of the walkers contain a filter (i.e. id(), extension
	*  function, etc.) step.
	*/
	@:public @:static @:final public static var BIT_FILTER(default, null) : Int;
	
	/** Bit is on if any of the walkers contain a root step. */
	@:public @:static @:final public static var BIT_ROOT(default, null) : Int;
	
	/**
	* If any of these bits are on, the expression may likely traverse outside
	*  the given subtree.
	*/
	@:public @:static @:final public static var BITMASK_TRAVERSES_OUTSIDE_SUBTREE(default, null) : Int;
	
	/**
	* Bit is on if any of the walkers can go backwards in document
	*  order from the context node.
	*/
	@:public @:static @:final public static var BIT_BACKWARDS_SELF(default, null) : Int;
	
	/** Found "//foo" pattern */
	@:public @:static @:final public static var BIT_ANY_DESCENDANT_FROM_ROOT(default, null) : Int;
	
	/**
	* Bit is on if any of the walkers contain an node() test.  This is
	*  really only useful if the count is 1.
	*/
	@:public @:static @:final public static var BIT_NODETEST_ANY(default, null) : Int;
	
	/** Bit is on if the expression is a match pattern. */
	@:public @:static @:final public static var BIT_MATCH_PATTERN(default, null) : Int;
	
	
}
