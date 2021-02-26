classdef FilterType
    enumeration
        detection, identification, estimation
    end
    methods
        function tf = isDetection(obj)
            tf = (obj == FilterType.detection);
        end
        function tf = isIdentification(obj)
            tf = (obj == FilterType.identification);
        end
        function tf = isEstimation(obj)
            tf = (obj == FilterType.estimation);
        end
    end
end
