import { rotateTable, captured } from './engine';
import anonymous from './nn';

export const getValueFromNN = (deepeningTask) => {
  const input = [deepeningTask.wNext ? 0 : 1];
  return 1 - anonymous(input);
};

export const solveDeepeningTaskOnNN = (deepeningTask) => {
  if (captured(deepeningTask.table, true)) {
    // invalid move
    return null;
  }

  const input = [deepeningTask.wNext ? 0 : 1];

  for (const [x, row] of rotateTable(deepeningTask.table).entries()) for (const [y, cell] of row.entries()) {
    switch(`${cell[0]}${cell[1]}`) {
      case '14': 
        input.push(0.1);
        break;
      case '13': 
        input.push(0.15);
        break;
      case '12': 
        input.push(0.2);
        break;
      case '15': 
        input.push(0.05);
        break;
      case '19': 
        input.push(0);
        break;
      case '11': 
        input.push(0.25);
        break;

      case '24': 
        input.push(0.9);
        break;
      case '23': 
        input.push(0.85);
        break;
      case '22': 
        input.push(0.8);
        break;
      case '25': 
        input.push(0.95);
        break;
      case '29': 
        input.push(1);
        break;
      case '21': 
        input.push(0.75);
        break;

      case '00': 
        input.push(0.5);
        break;

      default:
        throw new Error('illegal table in deepeningTask')
    }
  }

  return {
    score: 1 - anonymous(input),
    currentBests: deepeningTask.currentBests,
    moveTree: deepeningTask.moveTree,
  }
}
