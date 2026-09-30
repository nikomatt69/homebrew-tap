# typed: false
# frozen_string_literal: true

# This file was auto-generated. DO NOT EDIT.
# Last updated: 2026-09-30T03:50:14.995Z
class Nikcli < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/nikcli/nikcli"
  version "1.416.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nikcli/nikcli/releases/download/v1.416.0/nikcli-ai-darwin-x64.zip"
      sha256 "5f1f9e6e57fc7ed759dba2b3e08eddb25c319bc2392936c6d819dd043b100de6"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nikcli/nikcli/releases/download/v1.416.0/nikcli-ai-darwin-arm64.zip"
      sha256 "5642c5a0855aa962bb8d385455a49bed710bd3ce11706b7d73584b0c3fbf9f25"

      def install
        bin.install "nikcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.416.0/nikcli-ai-linux-x64.tar.gz"
      sha256 "26e2e6d3f36233460f4850d1b6383959c7dfc89a35d677c445620fdf87bcbc18"

      def install
        bin.install "nikcli"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/nikcli/nikcli/releases/download/v1.416.0/nikcli-ai-linux-arm64.tar.gz"
      sha256 "ac69fe1be9f91fe387ea5d8b3d70099ee30ab24ae0c1a80815145a5809155433"

      def install
        bin.install "nikcli"
      end
    end
  end

  test do
    assert_match(/#{version}/, shell_output("#{bin}/nikcli --version"))
  end
end

