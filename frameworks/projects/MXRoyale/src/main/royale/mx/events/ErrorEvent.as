////////////////////////////////////////////////////////////////////////////////
//
//  Licensed to the Apache Software Foundation (ASF) under one or more
//  contributor license agreements.  See the NOTICE file distributed with
//  this work for additional information regarding copyright ownership.
//  The ASF licenses this file to You under the Apache License, Version 2.0
//  (the "License"); you may not use this file except in compliance with
//  the License.  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
////////////////////////////////////////////////////////////////////////////////

package mx.events
{
COMPILE::SWF
{
import flash.events.ErrorEvent;        
}
/* import mx.events.Event;*/
import org.apache.royale.events.Event;
import org.apache.royale.events.IRoyaleEvent;

/**
 *
 *  
 *  @langversion 3.0
 *  @playerversion Flash 9
 *  @playerversion AIR 1.1
 *  @productversion Royale 0.9.3
 *  @royalesuppresspublicvarwarning
 */
COMPILE::SWF
public class ErrorEvent extends flash.events.ErrorEvent
{
    public static const ERROR:String = "error";
    
	public function ErrorEvent(type:String, bubbles:Boolean = false,
							  cancelable:Boolean = false, text:String = "", id:int = 0
							  )
	{
		super(type, bubbles, cancelable,text,id);
	}
}

/**
 *  Represents event objects that are dispatched when focus changes.
 *
 *  @see mx.core.UIComponent
 *  
 *  @langversion 3.0
 *  @playerversion Flash 9
 *  @playerversion AIR 1.1
 *  @productversion Royale 0.9.3
 *  @royalesuppresspublicvarwarning
 */
COMPILE::JS
public class ErrorEvent extends org.apache.royale.events.Event
{
    public static const ERROR:String = "error";
	
	//--------------------------------------------------------------------------
	//
	//  Class constants
	//
	//--------------------------------------------------------------------------

	
	//--------------------------------------------------------------------------
	//
	//  Constructor
	//
	//--------------------------------------------------------------------------

	/**
	 *  Constructor.
	 *
	 *  @param type The event type; indicates the action that caused the event.
	 *
	 *  @param bubbles Specifies whether the event can bubble
	 *  up the display list hierarchy.
	 *
	 *  @param cancelable Specifies whether the behavior
	 *  associated with the event can be prevented.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 9
	 *  @playerversion AIR 1.1
	 *  @productversion Royale 0.9.3
	 */
	public function ErrorEvent(type:String, bubbles:Boolean = false,
							  cancelable:Boolean = false, text:String = "", id:int = 0
							  )
	{
		super(type, bubbles, cancelable);
        this.text = text;
	}
	

    public var text:String;	

	
}

}
