import json

def analyze_incident(log_line):
    print("=== AI-ASSISTED DEVOPS INCIDENT ANALYSIS ===")
    print(f"Input Log: {log_line}")
    report = {
        "Error Classification": "Database Connectivity / Timeout Exception",
        "Severity": "HIGH (P2)",
        "Possible Root Cause": "Connection pool exhaustion or network security group block on DB port 5432",
        "Suggested Investigation": [
            "1. Verify database pod/service availability",
            "2. Check Kubernetes ConfigMap/Secret credentials",
            "3. Inspect active connection limits"
        ],
        "Suggested Remediation": "Restart stalled DB connection pool and increase max_connections in ConfigMap."
    }
    print(json.dumps(report, indent=2))

if __name__ == "__main__":
    sample_error = "2026-11-13T12:15:04Z ERROR [ecommerce-backend] Database Connection Timeout after 5000ms"
    analyze_incident(sample_error)
