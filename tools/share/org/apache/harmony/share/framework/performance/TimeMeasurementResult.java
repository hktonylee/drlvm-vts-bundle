/*
    Copyright 2005-2006 The Apache Software Foundation or its licensors, as applicable

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.

    See the License for the specific language governing permissions and
    limitations under the License.
*/
/**
 * @author Aleksey V Golubitsky
 * @version $Revision: 1.2 $
 */

package org.apache.harmony.share.framework.performance;

public class TimeMeasurementResult implements MeasurementResult {

    private long actualDuration = 0;
    private long actualTcount   = 0;

    public TimeMeasurementResult() {
    }

    public TimeMeasurementResult(long actualDuration, long actualTcount) {
        setActualDuration(actualDuration);
        setActualTestsCount(actualTcount);
    }

    public double getValue() {
        return getActualTestsCount();
    }

    public void setActualDuration(long ad) {
        actualDuration = ad;
    }

    public void setActualTestsCount(long tc) {
        actualTcount = tc;
    }

    public long getActualDuration() {
        return actualDuration;
    }

    public long getActualTestsCount() {
        return actualTcount;
    }

    public double getTestDuration() {
        return (double)actualDuration / actualTcount;
    }
}