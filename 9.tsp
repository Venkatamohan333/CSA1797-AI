import itertools

def calculate_total_distance(path, distances):
    total_distance = 0
    for i in range(len(path) - 1):
        total_distance += distances[path[i]][path[i + 1]]
    total_distance += distances[path[-1]][path[0]]  # Return to the starting city
    return total_distance

def traveling_salesman_bruteforce(distances):
    num_cities = len(distances)
    cities = list(range(num_cities))
    min_distance = float('inf')
    optimal_path = None

    for path in itertools.permutations(cities):
        distance = calculate_total_distance(path, distances)
        if distance < min_distance:
            min_distance = distance
            optimal_path = path

    return optimal_path, min_distance

# Example usage
if __name__ == '__main__':
    # Define the distance matrix between cities
    distances = [
        [0, 29, 20, 21],
        [29, 0, 15, 18],
        [20, 15, 0, 23],
        [21, 18, 23, 0]
    ]

    optimal_path, min_distance = traveling_salesman_bruteforce(distances)
    print("Optimal Path:", optimal_path)
    print("Minimum Distance:", min_distance)
