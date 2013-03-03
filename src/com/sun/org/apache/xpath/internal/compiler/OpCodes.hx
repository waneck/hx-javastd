package com.sun.org.apache.xpath.internal.compiler;
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
* $Id: OpCodes.java,v 1.1.2.1 2005/08/01 01:30:33 jeffsuttor Exp $
*/
/**
* Operations codes for XPath.
*
* Code for the descriptions of the operations codes:
* [UPPER CASE] indicates a literal value,
* [lower case] is a description of a value,
*      ([length] always indicates the length of the operation,
*       including the operations code and the length integer.)
* {UPPER CASE} indicates the given production,
* {description} is the description of a new production,
*      (For instance, {boolean expression} means some expression
*       that should be resolved to a boolean.)
*  * means that it occurs zero or more times,
*  + means that it occurs one or more times,
*  ? means that it is optional.
*
* returns: indicates what the production should return.
*/
extern class OpCodes
{
	/**
	* [ENDOP]
	* Some operators may like to have a terminator.
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var ENDOP(default, null) : Int;
	
	/**
	* [EMPTY]
	* Empty slot to indicate NULL.
	*/
	@:public @:static @:final public static var EMPTY(default, null) : Int;
	
	/**
	* [ELEMWILDCARD]
	* Means ELEMWILDCARD ("*"), used instead
	* of string index in some places.
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var ELEMWILDCARD(default, null) : Int;
	
	/**
	* [OP_XPATH]
	* [length]
	*  {expression}
	*
	* returns:
	*  XNodeSet
	*  XNumber
	*  XString
	*  XBoolean
	*  XRTree
	*  XObject
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var OP_XPATH(default, null) : Int;
	
	/**
	* [OP_OR]
	* [length]
	*  {boolean expression}
	*  {boolean expression}
	*
	* returns:
	*  XBoolean
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var OP_OR(default, null) : Int;
	
	/**
	* [OP_AND]
	* [length]
	*  {boolean expression}
	*  {boolean expression}
	*
	* returns:
	*  XBoolean
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var OP_AND(default, null) : Int;
	
	/**
	* [OP_NOTEQUALS]
	* [length]
	*  {expression}
	*  {expression}
	*
	* returns:
	*  XBoolean
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var OP_NOTEQUALS(default, null) : Int;
	
	/**
	* [OP_EQUALS]
	* [length]
	*  {expression}
	*  {expression}
	*
	* returns:
	*  XBoolean
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var OP_EQUALS(default, null) : Int;
	
	/**
	* [OP_LTE] (less-than-or-equals)
	* [length]
	*  {number expression}
	*  {number expression}
	*
	* returns:
	*  XBoolean
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var OP_LTE(default, null) : Int;
	
	/**
	* [OP_LT] (less-than)
	* [length]
	*  {number expression}
	*  {number expression}
	*
	* returns:
	*  XBoolean
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var OP_LT(default, null) : Int;
	
	/**
	* [OP_GTE] (greater-than-or-equals)
	* [length]
	*  {number expression}
	*  {number expression}
	*
	* returns:
	*  XBoolean
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var OP_GTE(default, null) : Int;
	
	/**
	* [OP_GT] (greater-than)
	* [length]
	*  {number expression}
	*  {number expression}
	*
	* returns:
	*  XBoolean
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var OP_GT(default, null) : Int;
	
	/**
	* [OP_PLUS]
	* [length]
	*  {number expression}
	*  {number expression}
	*
	* returns:
	*  XNumber
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var OP_PLUS(default, null) : Int;
	
	/**
	* [OP_MINUS]
	* [length]
	*  {number expression}
	*  {number expression}
	*
	* returns:
	*  XNumber
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var OP_MINUS(default, null) : Int;
	
	/**
	* [OP_MULT]
	* [length]
	*  {number expression}
	*  {number expression}
	*
	* returns:
	*  XNumber
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var OP_MULT(default, null) : Int;
	
	/**
	* [OP_DIV]
	* [length]
	*  {number expression}
	*  {number expression}
	*
	* returns:
	*  XNumber
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var OP_DIV(default, null) : Int;
	
	/**
	* [OP_MOD]
	* [length]
	*  {number expression}
	*  {number expression}
	*
	* returns:
	*  XNumber
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var OP_MOD(default, null) : Int;
	
	/**
	* [OP_QUO]
	* [length]
	*  {number expression}
	*  {number expression}
	*
	* returns:
	*  XNumber
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var OP_QUO(default, null) : Int;
	
	/**
	* [OP_NEG]
	* [length]
	*  {number expression}
	*
	* returns:
	*  XNumber
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var OP_NEG(default, null) : Int;
	
	/**
	* [OP_STRING] (cast operation)
	* [length]
	*  {expression}
	*
	* returns:
	*  XString
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var OP_STRING(default, null) : Int;
	
	/**
	* [OP_BOOL] (cast operation)
	* [length]
	*  {expression}
	*
	* returns:
	*  XBoolean
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var OP_BOOL(default, null) : Int;
	
	/**
	* [OP_NUMBER] (cast operation)
	* [length]
	*  {expression}
	*
	* returns:
	*  XBoolean
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var OP_NUMBER(default, null) : Int;
	
	/**
	* [OP_UNION]
	* [length]
	*  {PathExpr}+
	*
	* returns:
	*  XNodeSet
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var OP_UNION(default, null) : Int;
	
	/**
	* [OP_LITERAL]
	* [3]
	* [index to token]
	*
	* returns:
	*  XString
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var OP_LITERAL(default, null) : Int;
	
	/**
	* [OP_VARIABLE]
	* [4]
	* [index to namespace token, or EMPTY]
	* [index to function name token]
	*
	* returns:
	*  XString
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var OP_VARIABLE(default, null) : Int;
	
	/**
	* [OP_GROUP]
	* [length]
	*  {expression}
	*
	* returns:
	*  XNodeSet
	*  XNumber
	*  XString
	*  XBoolean
	*  XRTree
	*  XObject
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var OP_GROUP(default, null) : Int;
	
	/**
	* [OP_EXTFUNCTION] (Extension function.)
	* [length]
	* [index to namespace token]
	* [index to function name token]
	*  {OP_ARGUMENT}
	*
	* returns:
	*  XNodeSet
	*  XNumber
	*  XString
	*  XBoolean
	*  XRTree
	*  XObject
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var OP_EXTFUNCTION(default, null) : Int;
	
	/**
	* [OP_FUNCTION]
	* [length]
	* [FUNC_name]
	*  {OP_ARGUMENT}
	* [ENDOP]
	*
	* returns:
	*  XNodeSet
	*  XNumber
	*  XString
	*  XBoolean
	*  XRTree
	*  XObject
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var OP_FUNCTION(default, null) : Int;
	
	/**
	* [OP_ARGUMENT] (Function argument.)
	* [length]
	*  {expression}
	*
	* returns:
	*  XNodeSet
	*  XNumber
	*  XString
	*  XBoolean
	*  XRTree
	*  XObject
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var OP_ARGUMENT(default, null) : Int;
	
	/**
	* [OP_NUMBERLIT] (Number literal.)
	* [3]
	* [index to token]
	*
	* returns:
	*  XString
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var OP_NUMBERLIT(default, null) : Int;
	
	/**
	* [OP_LOCATIONPATH]
	* [length]
	*   {FROM_stepType}
	* | {function}
	* {predicate}
	* [ENDOP]
	*
	* (Note that element and attribute namespaces and
	* names can be wildcarded '*'.)
	*
	* returns:
	*  XNodeSet
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var OP_LOCATIONPATH(default, null) : Int;
	
	/**
	* [OP_PREDICATE]
	* [length]
	*  {expression}
	* [ENDOP] (For safety)
	*
	* returns:
	*  XBoolean or XNumber
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var OP_PREDICATE(default, null) : Int;
	
	/**
	* [OP_MATCHPATTERN]
	* [length]
	*  {PathExpr}+
	*
	* returns:
	*  XNodeSet
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var OP_MATCHPATTERN(default, null) : Int;
	
	/**
	* [OP_LOCATIONPATHPATTERN]
	* [length]
	*   {FROM_stepType}
	* | {function}{predicate}
	* [ENDOP]
	* returns:
	*  XNodeSet
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var OP_LOCATIONPATHPATTERN(default, null) : Int;
	
	/**
	* [NODETYPE_COMMENT]
	* No size or arguments.
	* Note: must not overlap function OP number!
	*
	* returns:
	*  XBoolean
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var NODETYPE_COMMENT(default, null) : Int;
	
	/**
	* [NODETYPE_TEXT]
	* No size or arguments.
	* Note: must not overlap function OP number!
	*
	* returns:
	*  XBoolean
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var NODETYPE_TEXT(default, null) : Int;
	
	/**
	* [NODETYPE_PI]
	* [index to token]
	* Note: must not overlap function OP number!
	*
	* returns:
	*  XBoolean
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var NODETYPE_PI(default, null) : Int;
	
	/**
	* [NODETYPE_NODE]
	* No size or arguments.
	* Note: must not overlap function OP number!
	*
	* returns:
	*  XBoolean
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var NODETYPE_NODE(default, null) : Int;
	
	/**
	* [NODENAME]
	* [index to ns token or EMPTY]
	* [index to name token]
	*
	* returns:
	*  XBoolean
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var NODENAME(default, null) : Int;
	
	/**
	* [NODETYPE_ROOT]
	* No size or arguments.
	*
	* returns:
	*  XBoolean
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var NODETYPE_ROOT(default, null) : Int;
	
	/**
	* [NODETYPE_ANY]
	* No size or arguments.
	*
	* returns:
	*  XBoolean
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var NODETYPE_ANYELEMENT(default, null) : Int;
	
	/**
	* [NODETYPE_ANY]
	* No size or arguments.
	*
	* returns:
	*  XBoolean
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var NODETYPE_FUNCTEST(default, null) : Int;
	
	/**
	* [FROM_stepType]
	* [length, including predicates]
	* [length of just the step, without the predicates]
	* {node test}
	* {predicates}?
	*
	* returns:
	*  XBoolean
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var AXES_START_TYPES(default, null) : Int;
	
	/** ancestor axes opcode.         */
	@:public @:static @:final public static var FROM_ANCESTORS(default, null) : Int;
	
	/** ancestor-or-self axes opcode.         */
	@:public @:static @:final public static var FROM_ANCESTORS_OR_SELF(default, null) : Int;
	
	/** attribute axes opcode.         */
	@:public @:static @:final public static var FROM_ATTRIBUTES(default, null) : Int;
	
	/** children axes opcode.         */
	@:public @:static @:final public static var FROM_CHILDREN(default, null) : Int;
	
	/** descendants axes opcode.         */
	@:public @:static @:final public static var FROM_DESCENDANTS(default, null) : Int;
	
	/** descendants-of-self axes opcode.         */
	@:public @:static @:final public static var FROM_DESCENDANTS_OR_SELF(default, null) : Int;
	
	/** following axes opcode.         */
	@:public @:static @:final public static var FROM_FOLLOWING(default, null) : Int;
	
	/** following-siblings axes opcode.         */
	@:public @:static @:final public static var FROM_FOLLOWING_SIBLINGS(default, null) : Int;
	
	/** parent axes opcode.         */
	@:public @:static @:final public static var FROM_PARENT(default, null) : Int;
	
	/** preceding axes opcode.         */
	@:public @:static @:final public static var FROM_PRECEDING(default, null) : Int;
	
	/** preceding-sibling axes opcode.         */
	@:public @:static @:final public static var FROM_PRECEDING_SIBLINGS(default, null) : Int;
	
	/** self axes opcode.         */
	@:public @:static @:final public static var FROM_SELF(default, null) : Int;
	
	/** namespace axes opcode.         */
	@:public @:static @:final public static var FROM_NAMESPACE(default, null) : Int;
	
	/** '/' axes opcode.         */
	@:public @:static @:final public static var FROM_ROOT(default, null) : Int;
	
	/**
	* For match patterns.
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var MATCH_ATTRIBUTE(default, null) : Int;
	
	/**
	* For match patterns.
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var MATCH_ANY_ANCESTOR(default, null) : Int;
	
	/**
	* For match patterns.
	* @xsl.usage advanced
	*/
	@:public @:static @:final public static var MATCH_IMMEDIATE_ANCESTOR(default, null) : Int;
	
	/** The end of the axes types.    */
	@:public @:static @:final public static var AXES_END_TYPES(default, null) : Int;
	
	
}
