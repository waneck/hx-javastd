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
* $Id: OpMap.java,v 1.1.2.1 2005/08/01 01:30:31 jeffsuttor Exp $
*/
extern class OpMap
{
	/**
	* The current pattern string, for diagnostics purposes
	*/
	@:protected private var m_currentPattern : String;
	
	/**
	* Return the expression as a string for diagnostics.
	*
	* @return The expression string.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Return the expression as a string for diagnostics.
	*
	* @return The expression string.
	*/
	@:overload @:public public function getPatternString() : String;
	
	/**
	* Get the XPath as a list of tokens.
	*
	* @return ObjectVector of tokens.
	*/
	@:overload @:public public function getTokenQueue() : com.sun.org.apache.xml.internal.utils.ObjectVector;
	
	/**
	* Get the XPath as a list of tokens.
	*
	* @param pos index into token queue.
	*
	* @return The token, normally a string.
	*/
	@:overload @:public public function getToken(pos : Int) : Dynamic;
	
	/**
	* Get size of the token queue.
	*
	* @return The size of the token queue.
	*/
	@:overload @:public public function getTokenQueueSize() : Int;
	
	/**
	* Get the opcode list that describes the XPath operations.  It contains
	* operations codes and indexes into the m_tokenQueue.
	* I use an array instead of a full parse tree in order to cut down
	* on the number of objects created.
	*
	* @return An IntVector that is the opcode list that describes the XPath operations.
	*/
	@:overload @:public public function getOpMap() : com.sun.org.apache.xpath.internal.compiler.OpMapVector;
	
	/**
	* The length is always the opcode position + 1.
	* Length is always expressed as the opcode+length bytes,
	* so it is always 2 or greater.
	*/
	@:public @:static @:final public static var MAPINDEX_LENGTH(default, null) : Int;
	
	/**
	* Given an operation position, return the current op.
	*
	* @param opPos index into op map.
	* @return the op that corresponds to the opPos argument.
	*/
	@:overload @:public public function getOp(opPos : Int) : Int;
	
	/**
	* Set the op at index to the given int.
	*
	* @param opPos index into op map.
	* @param value Value to set
	*/
	@:overload @:public public function setOp(opPos : Int, value : Int) : Void;
	
	/**
	* Given an operation position, return the end position, i.e. the
	* beginning of the next operation.
	*
	* @param opPos An op position of an operation for which there is a size
	*              entry following.
	* @return position of next operation in m_opMap.
	*/
	@:overload @:public public function getNextOpPos(opPos : Int) : Int;
	
	/**
	* Given a location step position, return the end position, i.e. the
	* beginning of the next step.
	*
	* @param opPos the position of a location step.
	* @return the position of the next location step.
	*/
	@:overload @:public public function getNextStepPos(opPos : Int) : Int;
	
	/**
	* Given an operation position, return the end position, i.e. the
	* beginning of the next operation.
	*
	* @param opMap The operations map.
	* @param opPos index to operation, for which there is a size entry following.
	* @return position of next operation in m_opMap.
	*/
	@:native('getNextOpPos') @:overload @:public @:static public static function _getNextOpPos(opMap : java.NativeArray<Int>, opPos : Int) : Int;
	
	/**
	* Given an FROM_stepType position, return the position of the
	* first predicate, if there is one, or else this will point
	* to the end of the FROM_stepType.
	* Example:
	*  int posOfPredicate = xpath.getNextOpPos(stepPos);
	*  boolean hasPredicates =
	*            OpCodes.OP_PREDICATE == xpath.getOp(posOfPredicate);
	*
	* @param opPos position of FROM_stepType op.
	* @return position of predicate in FROM_stepType structure.
	*/
	@:overload @:public public function getFirstPredicateOpPos(opPos : Int) : Int;
	
	/**
	* Tell the user of an error, and probably throw an
	* exception.
	*
	* @param msg An error msgkey that corresponds to one of the constants found
	*            in {@link com.sun.org.apache.xpath.internal.res.XPATHErrorResources}, which is
	*            a key for a format string.
	* @param args An array of arguments represented in the format string, which
	*             may be null.
	*
	* @throws TransformerException if the current ErrorListoner determines to
	*                              throw an exception.
	*/
	@:overload @:public public function error(msg : String, args : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Go to the first child of a given operation.
	*
	* @param opPos position of operation.
	*
	* @return The position of the first child of the operation.
	*/
	@:overload @:public @:static public static function getFirstChildPos(opPos : Int) : Int;
	
	/**
	* Get the length of an operation.
	*
	* @param opPos The position of the operation in the op map.
	*
	* @return The size of the operation.
	*/
	@:overload @:public public function getArgLength(opPos : Int) : Int;
	
	/**
	* Given a location step, get the length of that step.
	*
	* @param opPos Position of location step in op map.
	*
	* @return The length of the step.
	*/
	@:overload @:public public function getArgLengthOfStep(opPos : Int) : Int;
	
	/**
	* Get the first child position of a given location step.
	*
	* @param opPos Position of location step in the location map.
	*
	* @return The first child position of the step.
	*/
	@:overload @:public @:static public static function getFirstChildPosOfStep(opPos : Int) : Int;
	
	/**
	* Get the test type of the step, i.e. NODETYPE_XXX value.
	*
	* @param opPosOfStep The position of the FROM_XXX step.
	*
	* @return NODETYPE_XXX value.
	*/
	@:overload @:public public function getStepTestType(opPosOfStep : Int) : Int;
	
	/**
	* Get the namespace of the step.
	*
	* @param opPosOfStep The position of the FROM_XXX step.
	*
	* @return The step's namespace, NodeTest.WILD, or null for null namespace.
	*/
	@:overload @:public public function getStepNS(opPosOfStep : Int) : String;
	
	/**
	* Get the local name of the step.
	* @param opPosOfStep The position of the FROM_XXX step.
	*
	* @return OpCodes.EMPTY, OpCodes.ELEMWILDCARD, or the local name.
	*/
	@:overload @:public public function getStepLocalName(opPosOfStep : Int) : String;
	
	
}
