using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PappTest.Common.Models
{
    public class NodoutModel
    {
    }

    /// <summary>
    /// Com object
    /// </summary>
    public class Com
    {
        public string ComName { get; set; }
        public string ComID { get; set; }

        public List<Com> getComs()
        {
            List<Com> returnComs = new List<Com>();
            returnComs.Add(new Com() { ComName = "Displacement", ComID = "1" });
            returnComs.Add(new Com() { ComName = "Velocity", ComID = "2" });
            returnComs.Add(new Com() { ComName = "Acceleration", ComID = "3" });
            returnComs.Add(new Com() { ComName = "Rotational Displacement", ComID = "4" });
            returnComs.Add(new Com() { ComName = "Rotational Velocity", ComID = "5" });
            returnComs.Add(new Com() { ComName = "Rotational Acceleration", ComID = "6" });
            returnComs.Add(new Com() { ComName = "Deformation", ComID = "7" });
            returnComs.Add(new Com() { ComName = "Distance", ComID = "8" });
            return returnComs;
        }
    }

    /// <summary>
    /// Direction object
    /// </summary>
    public class Direction
    {
        public string ComID { get; set; }
        public string DirectionName { get; set; }

        public List<Direction> getDirectionsCollection()
        {
            List<Direction> returnDirections = new List<Direction>();
            returnDirections.Add(new Direction() { ComID = "1", DirectionName = "X Com" });
            returnDirections.Add(new Direction() { ComID = "1", DirectionName = "Y Com" });
            returnDirections.Add(new Direction() { ComID = "1", DirectionName = "Z Com" });
            returnDirections.Add(new Direction() { ComID = "1", DirectionName = "Reaultant" });
            returnDirections.Add(new Direction() { ComID = "2", DirectionName = "X Com" });
            returnDirections.Add(new Direction() { ComID = "2", DirectionName = "Y Com" });
            returnDirections.Add(new Direction() { ComID = "2", DirectionName = "Z Com" });
            returnDirections.Add(new Direction() { ComID = "2", DirectionName = "Reaultant" });
            returnDirections.Add(new Direction() { ComID = "3", DirectionName = "X Com" });
            returnDirections.Add(new Direction() { ComID = "3", DirectionName = "Y Com" });
            returnDirections.Add(new Direction() { ComID = "3", DirectionName = "Z Com" });
            returnDirections.Add(new Direction() { ComID = "3", DirectionName = "Reaultant" });
            returnDirections.Add(new Direction() { ComID = "4", DirectionName = "X Com" });
            returnDirections.Add(new Direction() { ComID = "4", DirectionName = "Y Com" });
            returnDirections.Add(new Direction() { ComID = "4", DirectionName = "Z Com" });
            returnDirections.Add(new Direction() { ComID = "5", DirectionName = "X Com" });
            returnDirections.Add(new Direction() { ComID = "5", DirectionName = "Y Com" });
            returnDirections.Add(new Direction() { ComID = "5", DirectionName = "Z Com" });
            returnDirections.Add(new Direction() { ComID = "6", DirectionName = "X Com" });
            returnDirections.Add(new Direction() { ComID = "6", DirectionName = "Y Com" });
            returnDirections.Add(new Direction() { ComID = "6", DirectionName = "Z Com" });
            returnDirections.Add(new Direction() { ComID = "7", DirectionName = "X Com" });
            returnDirections.Add(new Direction() { ComID = "7", DirectionName = "Y Com" });
            returnDirections.Add(new Direction() { ComID = "7", DirectionName = "Z Com" });
            returnDirections.Add(new Direction() { ComID = "7", DirectionName = "Reaultant" });
            returnDirections.Add(new Direction() { ComID = "8", DirectionName = "X Com" });
            returnDirections.Add(new Direction() { ComID = "8", DirectionName = "Y Com" });
            returnDirections.Add(new Direction() { ComID = "8", DirectionName = "Z Com" });
            returnDirections.Add(new Direction() { ComID = "8", DirectionName = "Reaultant" });
            return returnDirections;
        }


        public List<Direction> getDirectionByComCode(string ComCode)
        {
            List<Direction> stateList = new List<Direction>();
            foreach (Direction currentDirection in getDirectionsCollection())
            {
                if (currentDirection.ComID == ComCode)
                {
                    stateList.Add(new Direction() { ComID = currentDirection.ComID, DirectionName = currentDirection.DirectionName });
                }
            }
            return stateList;
        }

    }
}
